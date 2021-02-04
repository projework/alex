<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class BannerimgController extends CI_Controller {

	
	public function index()
	{
		$this->loadview('dashboard/pages/bannerimg/index.html');
	
    }
    
    public function bannerimg()
	{
		$this->loadview('dashboard/pages/bannerimg/addbannarimgpage.html');
	
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
