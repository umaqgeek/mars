<?php
class M_layer extends CI_Model  {
 

    public function getDistinctLayer($structure_number="")
    {
          //$query_string="SELECT DISTINCT layer_name, CODEMP FROM imported_project WHERE structure='".$structure_number."'";
            //$query_string="SELECT DISTINCT layer_name, diaintercouche FROM imported_project WHERE structure='".$structure_number."'";
            $query_string="SELECT DISTINCT(layer_name), layer_name, diainter FROM imported_project WHERE structure='".$structure_number."'";
            
            $query = $this->db->query($query_string);
 			
 			$results=array();
			
			/* foreach ($query->result() as $row)
			{
			    $results[]=$row;
			}
			return $results;*/
			return $query->result();
	}    

	public function getCorrespondingMaterial($structure_number="ST15261797",$layer_name=""){
		 //$query_string="SELECT DISTINCT CODEMP FROM imported_project WHERE structure='".$structure_number."' and layer_name='".$layer_name."' LIMIT 1";
            $query_string="SELECT DISTINCT CODEMP, diaintercouche, diaintercouchetolinf, diaintercouchetolsup, diaextercouche, diaextercouchetolsup, DIAEXTERCOUCHETOLINF FROM imported_project WHERE structure='".$structure_number."' and layer_name='".$layer_name."' LIMIT 1";
        
            $query = $this->db->query($query_string);
 			
 			return $query->result();
	}

	public function getLayerIdFromLayerName($layer_name="")
	{
		$this->db->select('layer_id');
		$this->db->from('layer');
		$this->db->where('UPPER(layer_description)', ucwords(strtolower($layer_name)));
		$query = $this->db->get();
		foreach ($query->result() as $row)
		{
			   return $row->layer_id;
		    
		}
	}
        
        public function getLayerMatchRule($layer_id=-1)
	{
		$this->db->select('*');
		$this->db->from('layer_rule_setup lrs, layer_match_rule lmr, layer l');
		$this->db->where('lrs.lrs_id = lmr.lrs_id');
		$this->db->where('l.layer_id = lmr.layer_id');
		$this->db->where('l.layer_id', $layer_id);
		$query = $this->db->get();
		return $query->result();
	}
	
	public function getLayersDetail($layer_id=-1)
	{
		$this->db->select('*');
		$this->db->from('layer');
		$this->db->where('layer_id', $layer_id);
		$query = $this->db->get();
		return $query->result();
	}

	public function getNominalFromLayerName($nc_name=0,$layer_name="")
	{

		$this->db->select($nc_name);
		$this->db->from('imported_project');
		$this->db->where('LAYER_NAME', $layer_name);
		$query = $this->db->get();
		return $query->result();
	}

 

}
?>