<?php
class M_rule extends CI_Model  {
 
 	public function getRules($rule_id)
	{
		$this->db->select('*');
		$this->db->from('rule ru');
		$this->db->where('ru.rule_id',$rule_id);
		$query = $this->db->get();
 		return $query->result();
	}
	
	public function getRules3()
	{
		$this->db->select('*');
		$this->db->from('rule ru');
		$query = $this->db->get();
 		return $query->result();
	}
	
	public function editRule($rule_id, $data)
	{
		$this->db->where('rule_id', $rule_id);
		return $this->db->update('rule', $data); 
	}
	
	public function getRules2($tool_name_code)
	{
		$this->db->select('*');
		$this->db->from('rule ru');
		$this->db->like('ru.rule_number', $tool_name_code, 'after'); 
		$query = $this->db->get();
 		return $query->result();
	}

    public function getAllrule()
    {
          //$query_string="SELECT DISTINCT layer_name, CODEMP FROM imported_project WHERE structure='".$structure_number."'";
            $query_string="SELECT * FROM rule";
            
            $query = $this->db->query($query_string);
 			
 			$results=array();
			
			/* foreach ($query->result() as $row)
			{
			    $results[]=$row;
			}
			return $results;*/
			return $query->result();
	}   

	public function getFormula($rp_id)
	{
		$this->db->select('rp_formula');
			$this->db->from('rule_param');
			$this->db->where('rule_param.rp_id',$rp_id);

 			$query = $this->db->get();
 			
			
		 foreach ($query->result() as $row)
			{
			  return $row->rp_formula;
			}
	}

	public function addRule($data=null)
	{
		if($this->db->insert('rule', $data))
		return $this->db->insert_id();
		else
		return false;
	}

	public function addRuleParam($data=null)
	{
		if($this->db->insert('rule_param', $data))
		return $this->db->insert_id();
		else
		return false;
	}

	public function updateRuleParam($data=null,$where=0)
	{
		$this->db->where('rp_id', $where);
		return $this->db->update('rule_param', $data);
	}

	public function updateRuleParamBasedOnParam_id($data=null,$where=0)
	{
		$this->db->where('param_id', $where);
		return $this->db->update('rule_param', $data);
	}



	public function addToolRule($data=null)
	{
		return $this->db->insert('tool_rule', $data);

	}

	 public function getAllruleAndsTools()
    {
        	$this->db->select('*');
			$this->db->from('tool_rule');
			$this->db->join('tool', 'tool.tool_id = tool_rule.tool_id');
			$this->db->join('rule', 'rule.rule_id = tool_rule.rule_id');
			$this->db->order_by('tool_rule.rule_id','asc'); 
 			$query = $this->db->get();
 			
			return $query->result();
	}     

		 public function getAllruleAndsToolsByRUleId($rule_id)
    {
        	$this->db->select('*');
			$this->db->from('tool_rule');
			$this->db->join('tool', 'tool.tool_id = tool_rule.tool_id');
			$this->db->join('rule', 'rule.rule_id = tool_rule.rule_id');
			$this->db->where('rule.rule_id',$rule_id);
			$this->db->order_by('tool_rule.rule_id','asc'); 
 			$query = $this->db->get();
 			
			
			/* foreach ($query->result() as $row)
			{
			    $results[]=$row;
			}
			return $results;*/
			return $query->result();
	}  

	public function getNcValueFromRuleValueMg($rp_id)
	{
		$this->db->select('*');
		$this->db->from('rule_param');
		$this->db->where('rp_id', $rp_id);
		$query = $this->db->get();
		$result=$query->result();
		return $result;
	}

	public function getParamFromRuleParam($rp_id)
	{
		$this->db->select('param_id');
		$this->db->from('rule_param');
		$this->db->where('rp_id', $rp_id);
		$query = $this->db->get();
		$result=$query->result();
		return $result;
	}

	public function getLayerNameFromRpId($rp_id=0)
	{
		$this->db->select('layer_description');
			$this->db->from('rule_param');
			$this->db->join('param', 'rule_param.param_id = param.param_id');
			$this->db->join('layer_tool', 'param.tool_id = layer_tool.tool_id');
			$this->db->join('layer', 'layer_tool.layer_id = layer.layer_id');
			$this->db->where('rule_param.rp_id',$rp_id);

 			$query = $this->db->get();
 			
			
		 foreach ($query->result() as $row)
			{
			  return $row->layer_description;
			}
		
	}

	public function getRuleIdFromRuleParam($rp_id)
	{
		$this->db->select('rule_id');
		$this->db->from('rule_param');
		$this->db->where('rp_id', $rp_id);
		$query = $this->db->get();
		$result=$query->result();
		return $result;
	}

	public function getPreValueForFormula($rp_id)
	{
		$this->db->select('rp_pre_value');
		$this->db->from('rule_param');
		$this->db->where('rp_id', $rp_id);
		$query = $this->db->get();
		$result=$query->result();
		return $result;
	}

	 public function getRulesAndParams($rule_id)
    {
        	$this->db->select('*');
			$this->db->from('rule_param');
			$this->db->join('rule', 'rule.rule_id = rule_param.rule_id');
			$this->db->join('param', 'param.param_id = rule_param.param_id');
			$this->db->join('tool', 'tool.tool_id = param.tool_id');
			//$this->db->where('rule.rule_id',$rule_id);
			$this->db->group_by('param.param_id');
			$this->db->order_by('param.param_number','asc'); 
 			$query = $this->db->get();
 			
			return $query->result();
	}  
	
	public function getRulesAndParams2($rule_id)
    {
        	$this->db->select('*');
			$this->db->from('rule_param');
			$this->db->join('rule', 'rule.rule_id = rule_param.rule_id');
			$this->db->join('param', 'param.param_id = rule_param.param_id');
			$this->db->where('rule.rule_id',$rule_id);
			$this->db->group_by('param.param_id');
			$this->db->order_by('param.param_number','asc'); 
 			$query = $this->db->get();
 			
			return $query->result();
	} 
	
	public function getRulesAndParams3($param_tool_code)
    {
        	$this->db->select('*');
			$this->db->from('rule_param');
			$this->db->join('rule', 'rule.rule_id = rule_param.rule_id');
			$this->db->join('param', 'param.param_id = rule_param.param_id');
			$this->db->like('param.param_tool_code',$param_tool_code);
			$this->db->group_by('param.param_id');
			$this->db->order_by('param.param_number','asc'); 
 			$query = $this->db->get();
 			
			return $query->result();
	}

	public function deleteRule($data=array()){
		$rule_id=$data['rule_id'];
		$this->db->where('rule_id', $id);
		$this->db->delete('rule'); 
	}

	public function deleteRulebyId($rule_id=0){
		
		$this->db->where('rule_id', $rule_id);
		return $this->db->delete('rule'); 
	}

	public function deleteRuleParam($rp_id=0){
		$this->db->where('rp_id', $rp_id);
		 $this->db->delete('rule_param'); 
	}

	public function deleteToolRule($rule_id=0){
		$this->db->where('rule_id', $rule_id);
		return $this->db->delete('tool_rule'); 
	}

	public function deleteRuleParamById($rule_id=0){
		$this->db->where('rule_id', $rule_id);
		return $this->db->delete('rule_param'); 
	}

	public function deleteRuleParamBasedOnParam_id($param_id=0){
		$this->db->where('param_id', $param_id);
		$this->db->delete('rule_param'); 
	}




 

}
?>