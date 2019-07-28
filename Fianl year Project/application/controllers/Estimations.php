<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Estimations extends CI_Controller {
	public function index()
	{
        $this->load->view('admin/Estimation');       
    }
    public function add_Estimation()
    {
        $project_name=$this->input->post('project_name');    
        $project_kloc=$this->input->post('project_kloc');
        $attr_rely=$this->input->post('rely');
        $attr_data=$this->input->post('data');      
        $attr_cplx=$this->input->post('cplx');      
        $attr_time=$this->input->post('time');      
        $attr_stor=$this->input->post('stor');      
        $attr_virt=$this->input->post('virt');      
        $attr_turn=$this->input->post('turn');      
        $attr_acap=$this->input->post('acap');      
        $attr_aexp=$this->input->post('aexp');      
        $attr_pcap=$this->input->post('pcap');      
        $attr_vexp=$this->input->post('vexp');      
        $attr_modp=$this->input->post('modp');      
        $attr_tool=$this->input->post('tool');      
        $attr_sced=$this->input->post('sced');      


        $config = array(
            array(
                'field' => 'project_name',
                'label' => 'Project Name',
                'rules' => 'required'
            ),
            array(
                'field' => 'project_kloc',
                'label' => 'Project KLOC',
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
           $this->load->model('EstimationModel','um');
           $result= $this->um->add($project_name,$project_kloc,$attr_rely,$attr_data,$attr_cplx,$attr_time,$attr_stor,$attr_virt,$attr_turn,$attr_acap,$attr_aexp,$attr_pcap,$attr_vexp,$attr_modp,$attr_tool,$attr_sced);
           exit(json_encode($result));
       }

   }
   public function fetch_Estimations()
   {
    $this->load->model('Estimationmodel','um');
    $res= $this->um->fetch();
    echo json_encode($res);      
}
public function fetch_update()
{		$id=$this->input->post('user_id');
$this->load->model('Estimationmodel','um');
$res= $this->um->fetch_u($id);
echo json_encode($res);      
}
public function update_Estimation()
{
 $id=$this->input->post('image_id');
 $project_name=$this->input->post('project_name');    
 $project_kloc=$this->input->post('project_kloc');
 $attr_rely=$this->input->post('rely');
 $attr_data=$this->input->post('data');      
 $attr_cplx=$this->input->post('cplx');      
 $attr_time=$this->input->post('time');      
 $attr_stor=$this->input->post('stor');      
 $attr_virt=$this->input->post('virt');      
 $attr_turn=$this->input->post('turn');      
 $attr_acap=$this->input->post('acap');      
 $attr_aexp=$this->input->post('aexp');      
 $attr_pcap=$this->input->post('pcap');      
 $attr_vexp=$this->input->post('vexp');      
 $attr_modp=$this->input->post('modp');      
 $attr_tool=$this->input->post('tool');      
 $attr_sced=$this->input->post('sced');      


 $config = array(
    array(
        'field' => 'project_name',
        'label' => 'Project Name',
        'rules' => 'required'
    ),
    array(
        'field' => 'project_kloc',
        'label' => 'Project KLOC',
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
   $this->load->model('EstimationModel','um');
   $result= $this->um->update($id,$project_name,$project_kloc,$attr_rely,$attr_data,$attr_cplx,$attr_time,$attr_stor,$attr_virt,$attr_turn,$attr_acap,$attr_aexp,$attr_pcap,$attr_vexp,$attr_modp,$attr_tool,$attr_sced);
   exit(json_encode($result));
}


}
public function delete_Estimation()
{	$id=$this->input->post('delete_id');
$this->load->model('Estimationmodel','um');
$result= $this->um->delete($id);
exit(json_encode($result));
}


}
