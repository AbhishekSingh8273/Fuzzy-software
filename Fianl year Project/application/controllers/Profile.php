<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Profile extends CI_Controller {
	public function index()
	{
                $this->load->view('admin/profile.php');       
	}
	public function changePass()
	{
		$id=$this->session->user_id;
		$old_pass=$this->input->post('old_pass');
		$new_pass=$this->input->post('new_pass');
		$con_pass=$this->input->post('con_pass');
		    $config = array(
				        array(
				                'field' => 'old_pass',
				                'label' => 'Old Password',
				                'rules' => 'required',
				                'errors' => array(
				                        'required' => 'You must provide a %s.',
				                ),
				        ),
				        array(
				                'field' => 'new_pass',
				                'label' => 'New Password',
				                'rules' => 'required',
				                'errors' => array(
				                        'required' => 'You must provide a %s.',
				                ),
				        ),
				        array(
				                'field' => 'con_pass',
				                'label' => 'Confirm Password',
				                'rules' => 'required|matches[new_pass]'
				        )			   
				);

			$this->form_validation->set_rules($config);
			if ($this->form_validation->run() == FALSE)
                {
                	$arr['type']='error';
                	$arr['msg']=$this->form_validation->error_string();
                	exit(json_encode($arr));
                }
                else
                {
                	$this->load->model('Usermodel','um');
			        $result= $this->um->update_pass($old_pass,$new_pass,$id);
			       	exit(json_encode($result));
                }


	}
	public function changeImage()
	{
		$id=$this->session->user_id;
        $image=$_FILES['image']['name'];      
        if (isset($_FILES['image']['name'])) 
		            {
						
		            	$config['upload_path']          = './assets/img';
		                $config['allowed_types']        = 'jpeg|jpg|png';
		                $config['file_name']        = "$image";
		                $this->load->library('upload', $config);
		                if (!$this->upload->do_upload('image')) 
		                {
		          			$arr['type']='error';
		          			$arr['msg']=$this->upload->display_errors();
		          			exit(json_encode($arr));                      	
		                }
		                else
		                {
		                	$this->load->model('UserModel','um');
			           		$result= $this->um->image($image,$id);
		    	       		exit(json_encode($result));	
		                }
		               
		            }

						
		            	
		                
         


	}
	public function changeinfo()
	{	
		$id=$this->session->user_id;
		$name=$this->input->post('name');
		$email=$this->input->post('email');
		$address=$this->input->post('address');
		$mobile=$this->input->post('mobile');
		$profession=$this->input->post('profession');
            $config = array(
				        array(
				                'field' => 'name',
				                'label' => 'Name',
				                'rules' => 'required|alpha_numeric_spaces'
				        ),
				        array(
				                'field' => 'mobile',
				                'label' => 'Mobile',
				                'rules' => 'required|regex_match[/^[6-9]{1}[0-9]{9}$/]'
				        ),
				         array(
				                'field' => 'email',
				                'label' => 'Email',
				                'rules' => 'required'
				               
				        ),
				         array(
				                'field' => 'profession',
				                'label' => 'Profession',
				                'rules' => 'required'
				               
				        )
				         ,
				         array(
				                'field' => 'address',
				                'label' => 'Address',
				                'rules' => 'required'
				               
				        )
				     
				);

			$this->form_validation->set_rules($config);
			if ($this->form_validation->run() == FALSE)
                {
                	$arr['type']='error';
                	$arr['msg']=$this->form_validation->error_string();
                	exit(json_encode($arr));
                }
                else
                {
                
			        			$this->load->model('Usermodel','um');
						        $result= $this->um->update($name,$email,$mobile,$profession,$address,$id);
						       	exit(json_encode($result));        	
                }
	}
  
}
