<?php if ( ! defined('BASEPATH')) die();
class Login extends MY_Controller {
	
	 function __construct()
    {
        parent::__construct();
 
        $this->load->library('grocery_CRUD');
 		$this->load->library('SimpleLoginSecure');
    }

	public function index()
	{
		$this->load->view('template/header');
		$this->load->view('template/nav');

		//check for the flashdata
		if($this->session->flashdata('error')!="")
			$this->session->keep_flashdata('error');
		elseif($this->session->keep_flashdata('sucess')!="")
			$this->session->keep_flashdata('sucess');

		$this->load->view('login/login');
		$this->load->view('template/footer');
	}

	public function register()
	{
		$crud = new grocery_CRUD();
		$this->load->view('template/header');
		$this->load->view('template/nav');

 		 $crud->set_table('users')
 		 ->set_subject('Tutor')
        ->columns('user_email','user_pass')
        ->display_as('user_email','E-Mail')
        ->display_as('user_pass','Password');
 
    $crud->fields('user_email','user_pass');
    $crud->change_field_type('user_pass', 'password');
 
  $crud->set_primary_key('user_id','users');
	    $crud->set_relation('role_id','role','role_id');
	  
	  	 $crud->unset_back_to_list();
		$crud->unset_read();

    $crud->callback_insert(array($this,'register_user'));
 
 			  	

	    $output = $crud->render();
	    $this->_generate_table($output);
	 
	$this->load->view('footer');
	}

	 function _generate_table($output = null)
 
    {
        $this->load->view('register.php',$output);    
    }

    function register_user($post_array) {
	 
	return $this->simpleloginsecure->create($post_array['user_email'], $post_array['user_pass']);
	
	} 

	public function activate_account($magicnum=null)
	{
	
		if(!$this->simpleloginsecure->activate_account($magicnum))
			$this->session->set_flashdata('error', 'There is no need to activate, user not found!');
		else
			$this->session->set_flashdata('sucess', 'Activation is sucssfull, please log in!');

		redirect('login/login/index');
	}

	public function authprocess()
	{
		$username=$this->input->post('username');
		$password=$this->input->post('password');

		if($this->simpleloginsecure->login($username, $password)==true){
			//login sucess, go to admin page
			redirect(site_url('admin'));	
		}
		else{
			//login fail, back to login and notif login error
			//redirect('login');
			print_r('fail'); die();
		}
	}

		public function logout()
	{
		$this->simpleloginsecure->logout();
		redirect(site_url());
	}
}
/* End of file welcome.php */
/* Location: ./application/controllers/bootigniter.php */