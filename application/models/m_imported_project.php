<?php
class M_imported_project extends CI_Model
{
	public function isExist($structure)
	{
		$this->db->select('*');
		$this->db->from('imported_project');
		$this->db->where('structure', $structure);
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return true;
		} else {
			return false;
		}
	}
	
	public function getAll($structure='-1', $layer='-1') 
	{
		$this->db->select('*');
		$this->db->from('imported_project');
		if ($structure != '-1')
		{
			$this->db->where('structure', $structure);
		}
		if ($layer != '-1')
		{
			$this->db->where('layer_name', $layer);
		}
		$query = $this->db->get();
		return $query->result();
	}
	
	public function getLayers($structure='-1')
	{
		$this->db->select('DISTINCT(ip.layer_name) AS layer_name_unique, 
									la.layer_code AS layer_code_unique');
		$this->db->from('imported_project ip, layer la');
		$this->db->where('ip.layer_name = la.layer_description');
		if ($structure != '-1')
		{
			$this->db->where('structure', $structure);
		}
		$query = $this->db->get();
		return $query->result();
	}
	
	public function getCumMass($structure='-1')
	{
		$this->db->select('SUM(massecouche) AS sum_massecouche');
		$this->db->from('imported_project');
		if ($structure != '-1')
		{
			$this->db->where('structure', $structure);
		}
		$query = $this->db->get();
		$r = $query->result();
		return $r[0]->sum_massecouche;
	}
}
?>