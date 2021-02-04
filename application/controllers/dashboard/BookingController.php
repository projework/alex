<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class BookingController extends CI_Controller {

	
	public function index()
	{
		$this->loadview('dashboard/pages/booking/index.html');
	
    }
    
    public function addplans()
	{
		$this->loadview('dashboard/pages/booking/addplanspage.html');
	
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
