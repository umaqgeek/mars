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
	
	public function getDistinctSize()
	{
		$this->db->select('DISTINCT(type_of_production_size) AS size_x');
		$this->db->from('material');
		$query = $this->db->get();
		return $query->result();
	}
	
	public function getCategory()
	{
		$this->db->select('*');
		$this->db->from('category');
		$query = $this->db->get();
		return $query->result();
	}
	
	public function getCategoryDetail($category_id)
	{
		$this->db->select('*');
		$this->db->from('category');
		$this->db->where('category_id', $category_id);
		$query = $this->db->get();
		return $query->result();
	}
	
	public function getAdmisPress($category_id=1, $cwt_id='', $cid_id='')
	{
		$this->db->select('*');
		$this->db->from('admissible_pressure');
		$this->db->where('category_id', $category_id);
		$this->db->where('cwt_id', $cwt_id);
		$this->db->where('cid_id', $cid_id);
		$query = $this->db->get();
		$r = $query->result();
		if ($r) {
			return $r[0]->ap_value;
		} else {
			return '__';
		}
	}
	
	public function getAdmisPressDetail($category_id=1, $cwt_id='', $cid_id='')
	{
		$this->db->select('*');
		$this->db->from('admissible_pressure');
		$this->db->where('category_id', $category_id);
		$this->db->where('cwt_id', $cwt_id);
		$this->db->where('cid_id', $cid_id);
		$query = $this->db->get();
		return $query->result();
	}
	
	public function addAdmisPress($data) {
		if($this->db->insert('admissible_pressure', $data)) {
			return $this->db->insert_id();
		} else {
			return 0;
		}
	}
	
	function editAdmisPress($id, $data) {
		$this->db->where('ap_id', $id);
		return $this->db->update('admissible_pressure', $data);
	}
}

?>