<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class EmpController extends CI_Controller {

	
	public function index()
	{
		$this->loadview('dashboard/pages/emp/index.html');
	
    }
    
    public function addemp()
	{
		$this->loadview('dashboard/pages/emp/addemppage.html');
	
	}

	public function viewagent()
	{
		$this->loadview('dashboard/pages/emp/viewagent.html');
	
	}


	public function about(){
		$this->load->view('dashboard/layout/header.html');
		$this->load->view('dashboard/layout/footer.html');
	}


	public function loadview($view){
		$this->load->view('dashboard/layout/header.html');
		//$this->load->view('dashboard/layout/sidenavbar.html');
		
		
		$this->load->view($view);
		$this->load->view('dashboard/layout/footer.html');
	}
}
