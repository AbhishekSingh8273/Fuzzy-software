<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Graph extends CI_Controller {
	public function index()
	{
                $this->load->view('admin/graph');       
	}
	public function login_check()
	{
		$this->load->model('Loginmodel','lm');
		$res= $this->lm->login(); 
        echo json_encode($res);
	}
	public function logout()
	{
		session_destroy();
		$arr['type']='success';
		$arr['msg']='admin/';
        echo json_encode($arr);
	}
  
}