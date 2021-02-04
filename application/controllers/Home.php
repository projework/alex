<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {


	public function index()
	{
        $this->loadview('web/pages/index.html','','home');

    }

    


	

	public function loadview($view, $data = '', $page)
	{
		$headerData['page'] = $page;
		$this->load->view('web/layout/header.html', $headerData);
		$this->load->view($view, $data);
		$this->load->view('web/layout/footer.html');
	}
}
