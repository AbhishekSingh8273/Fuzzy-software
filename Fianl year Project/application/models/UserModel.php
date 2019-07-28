<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class UserModel extends CI_Model 
{
	public function count_all()
 {
				$query=$this->db
							->where('status !=','1')
							->select(['id','name'])
							->get('users');
				
 
  return $query->num_rows();
 }
	public function add($name,$email,$mobile,$profession,$address,$password)
	{	$date= date('y-m-d');
		$data=['date'=>"$date",'name'=>"$name",'email'=>"$email",'profession'=>"$profession",'address'=>"$address",'password'=>md5($password),'mobile'=>"$mobile",'status'=>"0"];
		$query=$this->db
					->insert('users',$data);
		if($this->db->affected_rows())
		{			
					$arr['type']='success';
					$arr['msg']="User Created Successfully";
					return $arr;
		}
		else
		{
			$arr['type']='error';
			$arr['msg']="Error Occured";
			return $arr;
		}
	}	

	public function fetch($limit,$start)
	{
				$query=$this->db
					->where('status','0')
					->or_where('status','2')
					->select(['id','date','name','mobile','email','address','profession'])
					->get('users',$limit,$start);
		if(($query->num_rows()))
		{			
				$res=$query->result_array();
				$arr['type']='success';
				$arr['msg']=$res;
				return $arr;
		}
		else
		{
				$arr['type']='error';
				$arr['mag']="No Record Found1";
				return $arr;
		}
	}

	// public function fetch()
	// {
	// 	$query=$this->db
	// 				->where('status','0')
	// 				->select(['id','date','name','mobile','email'])
	// 				->get('users');
	// 	if(($query->num_rows()))
	// 	{			
	// 			$res=$query->result_array();
	// 			$arr['type']='success';
	// 			$arr['msg']=$res;
	// 			return $arr;
	// 	}
	// 	else
	// 	{
	// 			$arr['type']='error';
	// 			$arr['msg']="No Record Found";
	// 			return $arr;
	// 	}
	// }
	public function fetch_u($id)
	{
		$query=$this->db
					->where('id',"$id")
					->select(['name','mobile','email','date','profession','address','image'])
					->get('users');
		if(($query->num_rows()))
		{			
				$res=$query->result_array();
				return $res;
		}
		else
		{
			return 'No result found';
		}
	}
	public function update_pass($old_pass,$new_pass,$id)
	{
		
		$data=['password'=>md5($new_pass)];
		$array=['id'=>"$id"];
		$query=$this->db
					->where('id', $id)
					->where('password', md5($old_pass))
					->get('users');
    if($query->num_rows())
        {
        	 $query1=$this->db->where('id', $id)
   			 			  ->update('users', $data);
   			 if($this->db->affected_rows())
			{			
				$arr['type']='success';
				$arr['msg']="Password Changed Successfully";
				return $arr;
			}
			else
			{
				$arr['type']='error';
				$arr['msg']="Error Occured";
				return $arr;
			}

        }
    else
        {
        	    $arr['type']='error';
				$arr['msg']="Current Password Does Not Match";
				return $arr;
        }
	}
	public function update($name,$email,$mobile,$profession,$address,$id)
	{
		
			$data=['name'=>"$name",'email'=>"$email",'mobile'=>"$mobile",'profession'=>"$profession",'address'=>"$address"];
		$array=['id'=>"$id"];
			

        	 $query=$this->db->where('id', $id)
   			 			  ->update('users', $data);
   			 if($this->db->affected_rows())
			{			
				$arr['type']='success';
				$arr['msg']="Updated Successfully";
				return $arr;
			}
			else
			{
				$arr['type']='error';
				$arr['msg']="$id";
				return $arr;
			}

        
	}
	public function image($image,$id)
	{
		$id=$this->session->user_id;
		// $image="$id".".jpg";
		$data=['image'=>"$image"];

        	 $query=$this->db->where('id', $id)
   			 			  ->update('users', $data);
   			 if($this->db->affected_rows())
			{			
				$arr['type']='success';
				$arr['msg']="Updated Successfully";
				return $arr;
			}
			else
			{
				$arr['type']='error';
				$arr['msg']="Error Occured";
				return $arr;
			}

        
	}
	public function delete($id)
	{
		$data=['status'=>"1"];
		$array=['id'=>"$id"];
		$query=$this->db
					->where($array)
					->update('users',$data);
		if($this->db->affected_rows())
		{			
					$arr['type']='success';
					$arr['msg']="User Deleted Successfully";
					return $arr;
		}
		else
		{
			$arr['type']='error';
			$arr['msg']='Error Occured';
			return $arr;
		}
	}
	
  
}
