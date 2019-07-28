<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class SignupModel extends CI_Model {
	public function login()
	{	$this->load->database();
		$name=$this->input->post('name');
		$mobile=$this->input->post('mobile');
		$email=$this->input->post('email');
		$password=$this->input->post('password');
		$passconf=$this->input->post('passconf');
		$array = array('email' => $email, 'password' => md5($password), 'status' => '0');
		$query=$this->db
		->where($array)
		->select(['id','name','password','mobile','email'])
		->get('users');
		if(($query->num_rows()))
		{			
				$res=$query->result_array();		
				if ($email === $res[0]['email'] AND md5($password) === $res[0]['password']) 
				{
					$arr['type']='success';
					$arr['msg']="http://localhost/LIC/Dashboard";
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
			$arr['msg']='Email And password Does Not Match';
			return $arr;
		}		
	}
  
}
