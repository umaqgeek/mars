<?php
class M_imported_project extends CI_Model
{
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
}
?>