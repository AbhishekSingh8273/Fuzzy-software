<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class LoginModel extends CI_Model {
	public function login()
	{	$this->load->database();
		$email=$this->input->post('email');
		$password=md5($this->input->post('password'));
		$array = array('email' => "$email", 'password' => "$password", 'status !=' => '1');
		$query=$this->db
		->where($array)
		->select(['id','name','password','mobile','email','status'])
		->get('users');
		if(($query->num_rows()))
		{			
				$res=$query->result_array();		
				if ($email === $res[0]['email'] AND $password === $res[0]['password']) 
				{
					$newdata = array(
					        'user_id'  => $res[0]['id'],
					        'status'  => $res[0]['status'],
					        'email'  => $res[0]['email'],
					        'logged_in' => TRUE
					);

					$this->session->set_userdata($newdata);
					$arr['type']='success';
					$arr['msg']="http://localhost/Fianl_year/Dashboard/";
					return $arr;
				}
				else
				{
					$arr['type']='error';
					$arr['msg']='Email And password Does Not Match';
					return $arr;			
				} 
		}
		else
		{
			$arr['type']='error';
					$arr['msg']="Email And password Does Not Match";
					return $arr;
		}		
	}
  
}
