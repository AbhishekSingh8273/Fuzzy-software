<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Records extends CI_Controller 
{
	public function index()
	{
		$this->load->view('admin/records');       
	}

	public function fetch_records()
	{    
		$this->load->model('RecordModel','pm');
		$this->load->library("pagination");
		$config = array();
		$config["base_url"] = "http://localhost/Fianl_year/Records/";
		$config["total_rows"] = $this->pm->count_all();
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
		$this->pagination->initialize($config);
		$page = $this->uri->segment(3);
		$start = ($page - 1) * $config["per_page"];

		$res= $this->pm->fetch($config["per_page"], $start);

		if ($res['type']=='success') 
		{
			$x=1;
			$output="";
			for ($i = 0; $i <count($res['msg']); $i++) 
			{
				$output.="<tr>";
				$output.="<td>".$x."</td>";
				$output.="<td>".$res['msg'][$i]['date']."</td>";
				$output.="<td>".$res['msg'][$i]['project_name']."</td>";
				$output.="<td>".$res['msg'][$i]['project_kloc']."</td>";
				$output.="<td>".$res['msg'][$i]['cocomo_basic_effort']."</td>";
				$output.="<td>".$res['msg'][$i]['cocomo_inter_effort']."</td>";
				$output.="<td>".$res['msg'][$i]['fuzzy_model_effort']."</td>";

				$output.= "<td class='text-center'>";
				$output.="<button class='btn btn-sm btn-white mmre_single' data-id='".$res['msg'][$i]['id']."' ><i class='fa fa-clock' ></i></a>";
				$output.="<button type='button' name='update' data-id='".$res['msg'][$i]['id']."' data-name='".$res['msg'][$i]['project_name']."' data-kloc='".$res['msg'][$i]['project_kloc']."' class='btn  btn-success btn-sm update_call my-0' data-what='update_user'><i class='fa fa-pen' ></i></button>";
				$output.="<button type='button' name='actual' data-id='".$res['msg'][$i]['id']."'  data-actual='".$res['msg'][$i]['actual_effort']."' class='btn  btn-white	 btn-sm actual_call my-0' data-what='update_actual'>A</button>";
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
	$this->load->model('Usermodel','um');
	$res= $this->um->fetch_u($id);
	echo json_encode($res);      
}
public function fetch_total()
{		$id=$this->input->post('id');
$this->load->model('RecordModel','um');
$res= $this->um->total($id);
for ($i=0; $i <count($res['msg']) ; $i++) 
{ 
	$kloc[]=$res['msg'][$i]['project_kloc'];
	$cocomo_basic_effort[]=$res['msg'][$i]['cocomo_basic_effort'];
	$cocomo_inter_effort[]=$res['msg'][$i]['cocomo_inter_effort'];
	$halsted_effort[]=$res['msg'][$i]['halsted_effort'];
	$doty_effort[]=$res['msg'][$i]['doty_effort'];
	$baiely_effort[]=$res['msg'][$i]['baiely_effort'];

	$fuzzy_model_effort[]=$res['msg'][$i]['fuzzy_model_effort'];
	$actual_effort[]=$res['msg'][$i]['actual_effort'];
}
$res1=array('kloc'=>$kloc,'cocomo_basic'=>$cocomo_basic_effort,'cocomo_inter'=>$cocomo_inter_effort,'halsted'=>$halsted_effort,'doty'=>$doty_effort,'baiely'=>$baiely_effort, 'fuzzy'=>$fuzzy_model_effort,'actual'=>$actual_effort);

echo json_encode($res1);      
}
public function fetch_mmre()
{
	$this->load->model('RecordModel','um');
	$id= $this->input->post('id');
	$res= $this->um->total($id);
	$cocomo_bsum=0;$cocomo_isum=0;$halsted_bsum=0;$doty_bsum=0;$baiely_bsum=0;$fuzzy_bsum=0;
	for ($i=0; $i <count($res['msg']) ; $i++) 
	{ 
		$kloc[]=$res['msg'][$i]['project_kloc'];
		$cocomo_basic_mmre=(abs($res['msg'][$i]['cocomo_basic_effort'] - $res['msg'][$i]['actual_effort']) / $res['msg'][$i]['actual_effort']);
		$cocomo_bsum=$cocomo_bsum + $cocomo_basic_mmre;

		$cocomo_inter_mmre=(abs($res['msg'][$i]['cocomo_inter_effort'] - $res['msg'][$i]['actual_effort'])/ $res['msg'][$i]['actual_effort']);
		$cocomo_isum=$cocomo_isum + $cocomo_inter_mmre;

		$halsted_mmre=(abs($res['msg'][$i]['halsted_effort'] - $res['msg'][$i]['actual_effort'])/ $res['msg'][$i]['actual_effort']);
		$halsted_bsum=$halsted_bsum + $halsted_mmre;

		$baiely_mmre=(abs($res['msg'][$i]['baiely_effort'] - $res['msg'][$i]['actual_effort'])/ $res['msg'][$i]['actual_effort']);
		$baiely_bsum=$baiely_bsum + $baiely_mmre;

		$doty_mmre=(abs($res['msg'][$i]['doty_effort'] - $res['msg'][$i]['actual_effort'])/ $res['msg'][$i]['actual_effort']);
		$doty_bsum=$doty_bsum + $doty_mmre;

		$fuzzy_mmre=(abs($res['msg'][$i]['fuzzy_model_effort'] - $res['msg'][$i]['actual_effort'])/ $res['msg'][$i]['actual_effort']);
		$fuzzy_bsum=$fuzzy_bsum + $fuzzy_mmre;

	}
	if(!isset($id))
	{
		$cocomo_basic_mmre=($cocomo_bsum /10);
		$cocomo_inter_mmre=($cocomo_isum /10);
		$halsted_mmre=($halsted_bsum /100);
		$doty_mmre=($doty_bsum /10);
		$baiely_mmre=($baiely_bsum /10);	
		$fuzzy_mmre=($fuzzy_bsum /10);

	}
	else
	{
		$cocomo_basic_mmre=($cocomo_bsum);
		$cocomo_inter_mmre=($cocomo_isum);
		$halsted_mmre=($halsted_bsum/10);
		$doty_mmre=($doty_bsum);
		$baiely_mmre=($baiely_bsum);	
		$fuzzy_mmre=($fuzzy_bsum);

	}	
	
	$res1=array($cocomo_basic_mmre,$cocomo_inter_mmre,$baiely_mmre,$doty_mmre,$halsted_mmre,$fuzzy_mmre);

	echo json_encode($res1);      
}
public function update_record()
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
			'rules' => 'required'
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
public function update_actual()
{
	$actual_effort=$this->input->post('actual_effort');      
	$id=$this->input->post('delete_id');
	$config = array(
		array(
			'field' => 'actual_effort',
			'label' => 'Actual Effort',
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
		
		$this->load->model('Recordmodel','um');
		$result= $this->um->update_actual($actual_effort,$id);
		exit(json_encode($result));        	
	}

}
public function delete_record()
{	$id=$this->input->post('delete_id');
$this->load->model('RecordModel','um');
$result= $this->um->delete($id);
exit(json_encode($result));
}


}
