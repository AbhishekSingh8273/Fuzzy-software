<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class RecordModel extends CI_Model 
{

	public function count_all()
	{
		$logged_id=$this->session->user_id;

		$query=$this->db
		->where('status !=','1')
		->where('user_id',"$logged_id")
		->select(['id'])
		->get('projects');
		return $query->num_rows();
	}	
	public function total($id)
	{
		$logged_id=$this->session->user_id;

		if(isset($id))
		{
			$query=$this->db
			->where('status !=','1')
			->where('id',"$id")
			->where('user_id',"$logged_id")
			->select(['project_kloc','actual_effort','cocomo_basic_effort','cocomo_inter_effort','halsted_effort','doty_effort','baiely_effort','fuzzy_model_effort'])
			->get('projects');	
		}
		else
		{
			$query=$this->db
			->where('status !=','1')
			->where('user_id',"$logged_id")
			->select(['project_kloc','actual_effort','cocomo_basic_effort','cocomo_inter_effort','halsted_effort','doty_effort','baiely_effort','fuzzy_model_effort'])
			->order_by('id','DESC')
			->get('projects',10);	
		}	
		
		if(($query->num_rows()))
		{			
			$res=$query->result_array();
			$arr['type']='success';
			$arr['msg']=$res;
			return $arr;
		}
	}	
	public function mmre()
	{
		$logged_id=$this->session->user_id;

		$query=$this->db
		->where('status !=','1')
		->where('user_id',"$logged_id")
		->select(['project_kloc','actual_effort','cocomo_basic_effort','cocomo_inter_effort','halsted_effort','doty_effort','baiely_effort','fuzzy_model_effort'])
		->order_by('id','DESC')
		->get('projects',10);
		if(($query->num_rows()))
		{			
			$res=$query->result_array();
			$arr['type']='success';
			$arr['msg']=$res;
			return $arr;
		}
	}
	public function fetch($limit,$start)
	{
		$logged_id=$this->session->user_id;

		$query=$this->db
		->where('status','0')
		->where('user_id',"$logged_id")
		->select(['id','user_id','date','project_name','project_kloc','cocomo_basic_effort','cocomo_inter_effort','fuzzy_model_effort','actual_effort'])
		->order_by('id','DESC')
		
		->get('projects',$limit,$start);
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

	public function fetch_u($id)
	{
		$query=$this->db
		->where('id',"$id")
		->select(['name','mobile','email'])
		->get('projects');
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
	public function update($name,$email,$mobile,$id)
	{
		
		$data=['name'=>"$name",'email'=>"$email",'mobile'=>"$mobile"];
		$array=['id'=>"$id"];
		$query=$this->db
		->where($array)
		->update('projects',$data);
		if($this->db->affected_rows())
		{			
			$arr['type']='success';
			$arr['msg']="Record Updated Successfully";
			return $arr;
		}
		else
		{
			$arr['type']='error';
			$arr['msg']="Error Occured";
			return $arr;
		}
	}
	public function update_actual($actual_effort,$id)
	{
		
		$data=['actual_effort'=>"$actual_effort"];
		$array=['id'=>"$id"];
		$query=$this->db
		->where($array)
		->update('projects',$data);
		if($this->db->affected_rows())
		{			
			$arr['type']='success';
			$arr['msg']="Actual Effort Updated Successfully";
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
		->update('projects',$data);
		if($this->db->affected_rows())
		{			
			$arr['type']='success';
			$arr['msg']="Record Deleted Successfully";
			return $arr;
		}
		else
		{
			$arr['type']='error';
			$arr['msg']="$id";
			return $arr;
		}
	}
	
	
}
