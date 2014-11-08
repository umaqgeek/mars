<?php if ( ! defined('BASEPATH')) die();
class Main extends CI_Controller {
	public function index()
	{
		$this->load->view('header');
		$this->load->view('nav');
		$this->load->view('home');
		$this->load->view('footer');
	}
}
/* End of file welcome.php */
/* Location: ./application/controllers/bootigniter.php */