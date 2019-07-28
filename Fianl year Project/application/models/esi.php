<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class EstimationModel extends CI_Model 
{
	public function add($project_name,$project_kloc,$attr_rely,$attr_data,$attr_cplx,$attr_time,$attr_stor,$attr_virt,$attr_turn,$attr_acap,$attr_aexp,$attr_pcap,$attr_vexp,$attr_modp,$attr_tool,$attr_sced)
	{	
		$f=.3;$k=1;$w1=1;$w2=4;$w3=1;				//Taking fuzziness .3 and k=1 so by formula
		$alpha=(2*$k*$f)/($k+1);
		$alpha=(1-$alpha)*$project_kloc;
		$beta=(2*$f)/($k+1);
		$beta=(1+$beta)*$project_kloc;
		$a=6.00;$b=.665;   							//Obtained Using MATLAB by research	
		$m=$project_kloc;			
		
		$logged_id=$this->session->user_id;
		
		// Basic COCOCMO calc start
		 if($project_kloc < 50 )
		 {
		 	$basic_effort=2.4*(pow($project_kloc,1.05));

		 }
		 else if($project_kloc >= 50 AND $project_kloc <= 150)
		 {
		 	$basic_effort=3.0*(pow($project_kloc,1.12));

		 }	
		 else
		 {
		 	$basic_effort=3.6*(pow($project_kloc,1.20));

		 }	
		// Basic COCOCMO calc end

		 // Inter COCOMO
		 $eaf=$attr_rely*$attr_data*$attr_cplx*$attr_time*$attr_stor*$attr_virt*$attr_turn*$attr_acap*$attr_aexp*$attr_pcap*$attr_vexp*$attr_modp*$attr_tool*$attr_sced;
		 if($project_kloc < 50 )
		 {
		 	$inter_effort=3.2*(pow($project_kloc,1.06));
		 }
		 else if($project_kloc >= 50 AND $project_kloc <= 150)
		 {
		 	$inter_effort=3.0*(pow($project_kloc,1.12));

		 }	
		 else
		 {
		 	$inter_effort=2.8*(pow($project_kloc,1.20));

		 }	
		 $inter_effort=$inter_effort*$eaf;

		 // Halsted Model Start
		 	$halsted_effort=(5.2*(pow($project_kloc,1.50)));
		 	$halsted_effort=$halsted_effort*$eaf;
		 // Halsted Model End

		 // Baiely Model Start
		 	$baiely_effort=5.5+ (0.73*(pow($project_kloc,1.16)));
		 	$baiely_effort=$baiely_effort*$eaf;
		 // Baiely Model End

		 // Doty Model Start
		 	$doty_effort=(5.288*(pow($project_kloc,1.047)));
		 	$doty_effort=$doty_effort*$eaf;
		 // Doty Model End	

		 // Fuzy Model Start
		 	$alpha=.7*$project_kloc;
		 	$beta=1.3*$project_kloc;
		 	$opti=1*(6*(pow($alpha,$b)));
		 	$normal=4*(6*(pow($project_kloc,$b)));
		 	$pessi=1*(6*(pow($beta,$b)));
		 	$fuzzy_effort=( ($opti) + ($normal) + ($pessi) )/6;
		 	$fuzzy_effort=$fuzzy_effort*$eaf;
		 // Fuzy Model End	
		 	$array=array($basic_effort,$inter_effort,$halsted_effort,$baiely_effort,$doty_effort,$fuzzy_effort);
		 	$date=date('y-m-d');
		$data=['date'=>"$date",'user_id'=>"$logged_id",'project_name'=>"$project_name",'project_kloc'=>"$project_kloc",'cocomo_basic_effort'=>"$basic_effort",'cocomo_inter_effort'=>"$inter_effort",'halsted_effort'=>"$halsted_effort",'baiely_effort'=>"$baiely_effort",'doty_effort'=>"$doty_effort",'fuzzy_model_effort'=>"$fuzzy_effort",'actual_effort'=>"$fuzzy_effort",'status'=>'0'];
		$query=$this->db
					->insert('Projects',$data);			
		if($this->db->affected_rows())
		{				
					$arr['type']='success';
					$arr['msg']="$beta";
					$arr['result']=$array;
					return $arr;
		}
		else
		{
			$arr['type']='error';
			$arr['msg']='Error Occured';
			return $arr;
		}
	}	


	public function update($id,$project_name,$project_kloc,$attr_rely,$attr_data,$attr_cplx,$attr_time,$attr_stor,$attr_virt,$attr_turn,$attr_acap,$attr_aexp,$attr_pcap,$attr_vexp,$attr_modp,$attr_tool,$attr_sced)
	{	
		$logged_id=$this->session->user_id;
		
		// Basic COCOCMO calc start
		 if($project_kloc < 50 )
		 {
		 	$basic_effort=2.4*(pow($project_kloc,1.05));

		 }
		 else if($project_kloc >= 50 AND $project_kloc <= 150)
		 {
		 	$basic_effort=3.0*(pow($project_kloc,1.12));

		 }	
		 else
		 {
		 	$basic_effort=3.6*(pow($project_kloc,1.20));

		 }	
		// Basic COCOCMO calc end

		 // Inter COCOMO
		 $eaf=$attr_rely*$attr_data*$attr_cplx*$attr_time*$attr_stor*$attr_virt*$attr_turn*$attr_acap*$attr_aexp*$attr_pcap*$attr_vexp*$attr_modp*$attr_tool*$attr_sced;
		 if($project_kloc < 50 )
		 {
		 	$inter_effort=3.2*(pow($project_kloc,1.06));
		 }
		 else if($project_kloc >= 50 AND $project_kloc <= 150)
		 {
		 	$inter_effort=3.0*(pow($project_kloc,1.12));

		 }	
		 else
		 {
		 	$inter_effort=2.8*(pow($project_kloc,1.20));

		 }	
		 $inter_effort=$inter_effort*$eaf;

		 // Halsted Model Start
		 	$halsted_effort=(5.2*(pow($project_kloc,1.50)));
		 	$halsted_effort=$halsted_effort*$eaf;
		 // Halsted Model End

		 // Baiely Model Start
		 	$baiely_effort=5.5+ (0.73*(pow($project_kloc,1.16)));
		 	$baiely_effort=$baiely_effort*$eaf;
		 // Baiely Model End

		 // Doty Model Start
		 	$doty_effort=(5.288*(pow($project_kloc,1.047)));
		 	$doty_effort=$doty_effort*$eaf;
		 // Doty Model End	

		 // Fuzy Model Start
		 	$alpha=.7*$project_kloc;
		 	$beta=1.3*$project_kloc;
		 	$fuzzy_effort=( (1*(6*pow($alpha,.665))) + (4*(6*pow($project_kloc,.665))) + (1*(6*pow($alpha,.665))) )/(6);
		 	$fuzzy_effort=$fuzzy_effort*$eaf;
		 // Fuzy Model End	
		 	$array=array($basic_effort,$inter_effort,$halsted_effort,$baiely_effort,$doty_effort,$fuzzy_effort);
		$data=['project_name'=>"$project_name",'project_kloc'=>"$project_kloc",'cocomo_basic_effort'=>"$basic_effort",'cocomo_inter_effort'=>"$inter_effort",'halsted_effort'=>"$halsted_effort",'baiely_effort'=>"$baiely_effort",'doty_effort'=>"$doty_effort",'fuzzy_model_effort'=>"$fuzzy_effort",'status'=>'0'];
		$array1=['id'=>"$id"];
		$query=$this->db
					->where($array1)
					->update('projects',$data);		
		if($this->db->affected_rows())
		{				
					$arr['type']='success';
					$arr['msg']="Estimation Created Successfully";
					$arr['result']=$array;
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
