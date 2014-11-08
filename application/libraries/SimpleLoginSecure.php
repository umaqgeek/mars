<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

require_once('phpass-0.3/PasswordHash.php');

define('PHPASS_HASH_STRENGTH', 8);
define('PHPASS_HASH_PORTABLE', false);

/**
 * SimpleLoginSecure Class
 *
 * Makes authentication simple and secure.
 *
 * Simplelogin expects the following database setup. If you are not using 
 * this setup you may need to do some tweaking.
 *   
 * 
 *   CREATE TABLE `users` (
 *     `user_id` int(10) unsigned NOT NULL auto_increment,
 *     `user_email` varchar(255) NOT NULL default '',
 *     `user_pass` varchar(60) NOT NULL default '',
 *     `user_date` datetime NOT NULL default '0000-00-00 00:00:00' COMMENT 'Creation date',
 *     `user_modified` datetime NOT NULL default '0000-00-00 00:00:00',
 *     `user_last_login` datetime NULL default NULL,
 *     PRIMARY KEY  (`user_id`),
 *     UNIQUE KEY `user_email` (`user_email`),
 *   ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
 * 
 * @package   SimpleLoginSecure
 * @version   2.1.1
 * @author    Stéphane Bourzeix, Pixelmio <stephane[at]bourzeix.com>
 * @copyright Copyright (c) 2012-2013, Stéphane Bourzeix
 * @license   http://www.gnu.org/licenses/gpl-3.0.txt
 * @link      https://github.com/DaBourz/SimpleLoginSecure
 */
class SimpleLoginSecure
{
	var $CI;
	var $user_table = 'users';

	/**
	 * Create a user account
	 *
	 * @access	public
	 * @param	string
	 * @param	string
	 * @param	bool
	 * @return	bool
	 */
	function create($user_email = '', $user_pass = '', $auto_login = false) 
	{
		$this->CI =& get_instance();

		//Make sure account info was sent
		if($user_email == '' OR $user_pass == '') {
			return false;
		}
		
		//Check against user table
		$this->CI->db->where('username', $user_email); 
		$query = $this->CI->db->get_where($this->user_table);
		
		if ($query->num_rows() > 0) //user_email already exists
			return false;

		//Hash user_pass using phpass
		//$hasher = new PasswordHash(PHPASS_HASH_STRENGTH, PHPASS_HASH_PORTABLE);
		//$user_pass_hashed = $hasher->HashPassword($user_pass);

		//Insert account into the database
		$data = array(
					'username' => $user_email,
					'user_pass' => md5($user_pass),
					'magicnum'=>md5($user_email),
					'user_date' => date('c'),
					'user_modified' => date('c'),
				);

		$this->CI->db->set($data); 

		if(!$this->CI->db->insert($this->user_table)){ //There was a problem! 
			return false;
		}
		
				
		if($auto_login)
			$this->login($user_email, $user_pass);
		
		return true;
	}

	//send email activation
		function send_email_activation($email){
			$this->CI =& get_instance();
			$config = Array(
		    'protocol' => 'smtp',
		    'smtp_host' => 'ssl://smtp.googlemail.com',
		    'smtp_port' => 465,
		    'smtp_user' => 'zamboza@gmail.com',
		    'smtp_pass' => '3555002gmail',
		    'mailtype'  => 'html', 
		    'charset'   => 'iso-8859-1'
		);

		$magicnum=md5($email);

		$this->CI->load->library('email', $config);
		$this->CI->email->set_newline("\r\n");
		    $this->CI->email->from('zamboza@gmail.com', 'Hometuition');
        $this->CI->email->to($email); 

        $this->CI->email->subject('Email Activation');
        $this->CI->email->message('Thank You for registering with us, click here to activate your account : <br/> '.site_url().'login/activate_account/'.$magicnum);

		// Set to, from, message, etc.

		  if(!$this->CI->email->send())
		  	 show_error($this->CI->email->print_debugger());
	}

	public function activate_account($magicnum=null)
	{

		$this->CI =& get_instance();

		$this->CI->db->where('magicnum', $magicnum); 
		$query = $this->CI->db->get_where('users');
		
		if ($query->num_rows() > 0){ //user_email already exists
			//update user status to active
			$data = array(
					'email_activation' => 1
				);
 
		$this->CI->db->where('magicnum', $magicnum);

		if(!$this->CI->db->update('users', $data)) //There was a problem! 
			return false;						
			else
				return true;
		}
			else{
				return false;
			}
		
	}

	/**
	 * Update a user account
	 *
	 * Only updates the email, just here for you can 
	 * extend / use it in your own class.
	 *
	 * @access	public
	 * @param integer
	 * @param	string
	 * @param	bool
	 * @return	bool
	 */
	function update($user_id = null, $user_email = '', $auto_login = true) 
	{
		$this->CI =& get_instance();

		//Make sure account info was sent
		if($user_id == null OR $user_email == '') {
			return false;
		}
		
		//Check against user table
		$this->CI->db->where('user_id', $user_id);
		$query = $this->CI->db->get_where($this->user_table);
		
		if ($query->num_rows() == 0){ // user don't exists
			return false;
		}
		
		//Update account into the database
		$data = array(
					'user_email' => $user_email,
					'user_modified' => date('c'),
				);
 
		$this->CI->db->where('user_id', $user_id);

		if(!$this->CI->db->update($this->user_table, $data)) //There was a problem! 
			return false;						
				
		if($auto_login){
			$user_data['user_email'] = $user_email;
			$user_data['user'] = $user_data['user_email']; // for compatibility with Simplelogin
			
			$this->CI->session->set_userdata($user_data);
			}
		return true;
	}

	/**
	 * Login and sets session variables
	 *
	 * @access	public
	 * @param	string
	 * @param	string
	 * @return	bool
	 */
	function login($username = '', $user_pass = '') 
	{
		$this->CI =& get_instance();

		if($username == '' OR $user_pass == '')
			return false;


		//Check if already logged in
		if($this->CI->session->userdata('username') == $username)
			return true;
		
		
		//Check against user table
		$this->CI->db->where('username', $username); 
		//$this->CI->db->where('email_activation', 1); //make sure the email is activated
		$query = $this->CI->db->get_where($this->user_table);

		if ($query->num_rows() > 0) 
		{
			$user_data = $query->row_array(); 

			//$hasher = new PasswordHash(PHPASS_HASH_STRENGTH, PHPASS_HASH_PORTABLE);

			$encrypted_pass=$user_data['user_pass'];
		
			if($encrypted_pass!=md5($user_pass))
				return false;			

			//Destroy old session
			$this->CI->session->sess_destroy();
			
			//Create a fresh, brand new session
			$this->CI->session->sess_create();

			$this->CI->db->simple_query('UPDATE ' . $this->user_table  . ' SET user_last_login = "' . date('c') . '" WHERE user_id = ' . $user_data['user_id']);

			//Set session data
			unset($user_data['user_pass']);
			$user_data['username'] = $user_data['username']; // for compatibility with Simplelogin
			$user_data['logged_in'] = true;
			$this->CI->session->set_userdata($user_data);
			
			return true;
		} 
		else 
		{
			return false;
		}	

	}

	/**
	 * Logout user
	 *
	 * @access	public
	 * @return	void
	 */
	function logout() {
		$this->CI =& get_instance();		

		$this->CI->session->sess_destroy();
	}

	/**
	 * Delete user
	 *
	 * @access	public
	 * @param integer
	 * @return	bool
	 */
	function delete($user_id) 
	{
		$this->CI =& get_instance();
		
		if(!is_numeric($user_id))
			return false;			

		return $this->CI->db->delete($this->user_table, array('user_id' => $user_id));
	}
	
	
	/**
	* Edit a user password
	* @author    Stéphane Bourzeix, Pixelmio <stephane[at]bourzeix.com>
	* @author    Diego Castro <castroc.diego[at]gmail.com>
	*
	* @access  public
	* @param  string
	* @param  string
	* @param  string
	* @return  bool
	*/
	function edit_password($user_email = '', $old_pass = '', $new_pass = '')
	{
		$this->CI =& get_instance();
		// Check if the password is the same as the old one
		$this->CI->db->select('user_pass');
		$query = $this->CI->db->get_where($this->user_table, array('user_email' => $user_email));
		$user_data = $query->row_array();

		//$hasher = new PasswordHash(PHPASS_HASH_STRENGTH, PHPASS_HASH_PORTABLE);	
		$old_pass=$user_data['user_pass'];
		if ($old_pass==md5($new_pass)){ //old_pass is the same
			return FALSE;
		}
		
		// Hash new_pass using phpass
		//$user_pass_hashed = $hasher->HashPassword($new_pass);
		// Insert new password into the database
		$data = array(
			'user_pass' => md5($new_pass),
			'user_modified' => date('c')
		);
		
		$this->CI->db->set($data);
		$this->CI->db->where('user_email', $user_email);
		if(!$this->CI->db->update($this->user_table, $data)){ // There was a problem!
			return FALSE;
		} else {
			return TRUE;
		}
	}

	public function is_logged_in()
	{
		$this->CI =& get_instance();
		if($this->CI->session->userdata('logged_in')!=true)
			return false;
		else
			return true;
	}
	
	
}
?>
