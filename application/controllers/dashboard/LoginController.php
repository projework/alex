<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class LoginController extends CI_Controller {

	
    public function login()
	{
		$this->loadview('dashboard/pages/login/login.html');
	
	}
    
   


	public function about(){
		//$this->load->view('dashboard/layout/header.html');
		//$this->load->view('dashboard/layout/footer.html');
	}


	public function loadview($view){
		//$this->load->view('dashboard/layout/header.html');
		//$this->load->view('dashboard/layout/sidenavbar.html');
		
		
		$this->load->view($view);
		//$this->load->view('dashboard/layout/footer.html');
	}
}
