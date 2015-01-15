<?php
class M_project extends CI_Model
{
	public function Add($table = null, $data = null)
	{
		if ($this->db->insert($table, $data)) return $this->db->insert_id();
		else return false;
	}

	public function getAllProjects()
	{

		// $query_string="SELECT DISTINCT project_name,project_number,transaction_id,selected_layer_id, selected_tool_id, idnom, structure_number FROM project";

		$query_string = "SELECT * FROM project";
		$query = $this->db->query($query_string);
		$results = array();
		return $query->result();
	}

	public function getProjects($structure_number = '')
	{

		// $query_string="SELECT DISTINCT project_name,project_number,transaction_id,selected_layer_id, selected_tool_id, idnom, structure_number FROM project";

		$query_string = "SELECT * FROM project p, users u WHERE p.user_id = u.user_id AND p.structure_number='" . $structure_number . "'";
		$query = $this->db->query($query_string);
		$results = array();
		return $query->result();
	}

	public function update($table = null, $data = null, $where_string = "", $where_value = null)
	{
		$this->db->where($where_string, $where_value);
		return $this->db->update($table, $data);
	}

	public function getProjectByTransId($transaction_id = 0)
	{
		$this->db->select('*');
		$this->db->from('project');
		$this->db->where('transaction_id', $transaction_id);
		$query = $this->db->get();
		return $query->result();
	}

	public function getTransIdByProjectId($project_id = 0)
	{
		$this->db->select('transaction_id');
		$this->db->from('project');
		$this->db->where('project_id', $project_id);
		$query = $this->db->get();
		foreach($query->result() as $row) {
			return $row->transaction_id;
		}
	}

	public function getTransIdByTransacId($transaction_id = 0)
	{
		$this->db->select('structure_number');
		$this->db->from('project');
		$this->db->where('transaction_id', $transaction_id);
		$query = $this->db->get();
		foreach($query->result() as $row) {
			return $row->structure_number;
		}
	}
}

?>