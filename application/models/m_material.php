<?php

class M_material extends CI_Model  
{
	public function get_sheet($structure='-1', $layer_name='-1') 
	{
		$this->db->select('*');
		$this->db->from('material m, imported_project ip');
		$this->db->where('m.material_code = ip.codemp');
		if ($structure != '-1') {
			$this->db->where('ip.structure', $structure);
		}
		if ($layer_name != '-1') {
			$this->db->where('ip.layer_name', $layer_name);
		}
		$this->db->group_by('m.material_code');
		$query = $this->db->get();
		return $query->result();
	}
}

?>