<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Users extends CI_Controller {
	public function index()
	{
                $this->load->view('admin/users');       
	}
	public function add_user()
	{
            $name=$this->input->post('name');      
            $mobile=$this->input->post('mobile');      
            $email=$this->input->post('email');    
            $profession=$this->input->post('profession');      
            $address=$this->input->post('address');      

            $password=$this->input->post('password');      
            $passconf=$this->input->post('passconf');      
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
				        )
				        ,
				        array(
				                'field' => 'email',
				                'label' => 'Email',
				                'rules' => 'required|is_unique[users.email]|valid_email',
				                'errors' => array(
				                        'is_unique' => 'Email Already Exists',
				                )
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
				        ,
				        array(
				                'field' => 'password',
				                'label' => 'Password',
				                'rules' => 'required',
				                'errors' => array(
				                        'required' => 'You must provide a %s.',
				                ),
				        ),
				        array(
				                'field' => 'passconf',
				                'label' => 'Password Confirmation',
				                'rules' => 'required|matches[password]'
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
			        $result= $this->um->add($name,$email,$mobile,$profession,$address,$password);
			       	exit(json_encode($result));
                }

	}
	public function fetch_users()
	{
            // $this->load->model('Usermodel','um');
            // $res= $this->um->fetch();
            // echo json_encode($res);      
                $this->load->model('UserModel','um');
              $this->load->library("pagination");
			  $config = array();
			  $config["base_url"] = "http://localhost/Fianl_year/Users/";
			  $config["total_rows"] = $this->um->count_all();
			  $config["per_page"] = 7; 		
			  $config["uri_segment"] = 3;
			  $config["use_page_numbers"] = TRUE;
			  $config["full_tag_open"] = '<ul class="pagination pagination-circle pg-danger mb-0">';
			  $config["full_tag_close"] = '</ul>';
			  $config["first_tag_open"] = '<li class="page-item page-link active">';
			  $config["first_tag_close"] = '</li>';
			  $config["last_tag_open"] = '<li class="page-item page-link">';
			  $config["last_tag_close"] = '</li>';
			  $config['next_link'] = '&gt;';
			  $config["next_tag_open"] = '<li class="page-item page-link">';
			  $config["next_tag_close"] = '</li>';
			  $config["prev_link"] = "&lt;";
			  $config["prev_tag_open"] = "<li class='page-item page-link'>";
			  $config["prev_tag_close"] = "</li>";
			  $config["cur_tag_open"] = "<li class='page-item active'><a href='#' class='page-link'>";
			  $config["cur_tag_close"] = "</a></li>";
			  $config["num_tag_open"] = "<li class='page-item page-link'>";
			  $config["num_tag_close"] = "</li>";
			  $config["num_links"] = 1;
			  $arr['pa']=$this->pagination;
			  $page = $this->uri->segment(3);
			  $start = ($page - 1) * $config["per_page"];

           	  	$res= $this->um->fetch($config["per_page"], $start);

            if ($res['type']=='success') 
            {
            	$x=1;
            	$output="";
	            for ($i = 0; $i <count($res['msg']); $i++) 
	            {
	                $output.="<tr>";
	                           $output.="<td>".$x."</td>";
	                           $output.="<td>".$res['msg'][$i]['date']."</td>";
	                           $output.="<td>".$res['msg'][$i]['name']."</td>";
	                           $output.="<td>".$res['msg'][$i]['email']."</td>";
	                           $output.="<td>".$res['msg'][$i]['mobile']."</td>";
	                           $output.="<td>".$res['msg'][$i]['profession']."</td>";
	                           $output.="<td>".$res['msg'][$i]['address']."</td>";

	                           $output.= "<td class='text-center'>";
	                         
	                           $output.="<button class='btn btn-danger  delete_call btn-sm my-0'data-what='delete_user'  data-id='".$res['msg'][$i]['id']."'><i class='fa fa-times' ></i></button></td>"
	                           ;
	                           $output.="</tr>";
	                           $x++;    
	            }
	                     $output.="  ";	
             }
             else if($res['type']=='error')
             {
             	$output="<h3 class='text-center'>No Record Found</h3>";
             } 
             $arr['pagination_link']=$this->pagination->create_links();
             $arr['table']=$output;
			  // $arr['msg']='w';
			  // $arr['success']='d';
            exit(json_encode($arr));
	}
	public function fetch_update()
	{		$id=$this->input->post('user_id');
			if (!isset($id))
			{
				$id=$this->session->user_id;
			}
            $this->load->model('Usermodel','um');
            $res= $this->um->fetch_u($id);
            echo json_encode($res);      
	}
	public function update_user()
	{
		    $name=$this->input->post('name');      
            $mobile=$this->input->post('mobile');      
            $email=$this->input->post('email');      
			$id=$this->input->post('image_id');
            $config = array(
				        array(
				                'field' => 'name',
				                'label' => 'Name',
				                'rules' => 'required'
				        ),
				        array(
				                'field' => 'mobile',
				                'label' => 'Moile',
				                'rules' => 'required|regex_match[/^[6-9]{1}[0-9]{9}$/]'
				        ),
				         array(
				                'field' => 'email',
				                'label' => 'Email',
				                'rules' => 'required|valid_email'
				               
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
						        $result= $this->um->update($name,$email,$mobile,$id);
						       	exit(json_encode($result));        	
                }

	}
	public function delete_user()
	{	$id=$this->input->post('delete_id');
		$this->load->model('Usermodel','um');
			        $result= $this->um->delete($id);
			       	exit(json_encode($result));
	}


}
