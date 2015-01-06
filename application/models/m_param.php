<?php
class M_param extends CI_Model  {
	
	public function updateRuleParamDetail($rp_formula, $data)
	{
		$this->db->like('rp_formula', $rp_formula); 
		return $this->db->update('rule_param', $data); 
	}
	
	public function getParamsDetail($param_id)
	{
		$this->db->select('*');
		$this->db->from('param');
		$this->db->where('param_id', $param_id); 
		
		$query = $this->db->get();
		$result=$query->result();
		return $result;
	}
	
	public function getRuleParamsAll()
	{
		$this->db->select('*');
		$this->db->from('rule_param');
		
		$query = $this->db->get();
		$result=$query->result();
		return $result;
	}
   
	//get tool_id from tool_rule table
	public function getToolId($param_id=0)
	{
		$this->db->select('*');
		$this->db->from('tool');
		$this->db->join('param', 'param.tool_id = tool.tool_id');
		$this->db->where('param_id',$param_id);
		$query = $this->db->get();
		$result=array();
		foreach ($query->result() as $row)
		{
			    $result['tool_code']=$row->tool_code;
		
		    
		}
		return $result;

	}

	public function getParamValue($rule_id=0,$param_id=0)
	{
		$this->db->select('rp_post_value');
		$this->db->from('rule_param');
		$this->db->where('param_id', $param_id); 
		$this->db->where('rule_id', $rule_id);
		
		$query = $this->db->get();
		$result=$query->result();
		return $result;
	}

	public function getAllNcId()
	{
		$this->db->select('nc_id');
		$this->db->from('nominal_column');

		
		$query = $this->db->get();
		$result=$query->result();
		return $result;
	}

	public function getParamBasedOnToolId($tool_id){
		$this->db->select('*');
		$this->db->from('param');
		$this->db->where('tool_id', $tool_id); 
		
		$query = $this->db->get();
		$result=$query->result();
		return $result;
	}

	public function addParam($data=null)
	{
		if($this->db->insert('param', $data))
		return $this->db->insert_id();
		else
		return false;
	}

	public function getparamWithSameTool($tool_id=0,$param_number=0)
	{
		$this->db->select('param_id');
		$this->db->from('param');
		$this->db->where('tool_id',$tool_id);
		$this->db->where('param_number',$param_number);
		$query = $this->db->get();
		foreach ($query->result() as $row)
		{
			   return $row->param_id;
		    
		}
	}

	public function updateParam($data=null,$where=0)
	{
		$this->db->where('param_id', $where);
			return $this->db->update('param', $data);
		
	}
 

}
?>