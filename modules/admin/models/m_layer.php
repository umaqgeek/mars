<?php
class M_layer extends CI_Model  {
 

    public function getDistinctLayer($structure_number="ST15261797")
    {
          //$query_string="SELECT DISTINCT layer_name, CODEMP FROM imported_project WHERE structure='".$structure_number."'";
            $query_string="SELECT DISTINCT layer_name FROM imported_project WHERE structure='".$structure_number."'";
            
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


 

}
?>