<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ServicesController extends CI_Controller {

	
	public function index()
	{
		$this->loadview('dashboard/pages/services/index.html');
	
	}

    public function addservices()
	{
		$this->loadview('dashboard/pages/services/addserivespage.html');
	
	}

	public function viewser()
	{
		$this->loadview('dashboard/pages/services/viewservices.html');
	
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
