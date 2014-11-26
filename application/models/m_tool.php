<?php
class M_tool extends CI_Model  {
 

    public function getAlltools()
    {
          //$query_string="SELECT DISTINCT layer_name, CODEMP FROM imported_project WHERE structure='".$structure_number."'";
            $query_string="SELECT * FROM tool";
            
            $query = $this->db->query($query_string);
 			
 			$results=array();
			
			/* foreach ($query->result() as $row)
			{
			    $results[]=$row;
			}
			return $results;*/
			return $query->result();
	}    

	//get tool_id from tool_rule table
	public function getToolId($rule_id=0)
	{
		$this->db->select('*');
		$this->db->from('tool_rule');
		$this->db->join('tool', 'tool_rule.tool_id = tool.tool_id');
		$this->db->where('rule_id',$rule_id);
		$query = $this->db->get();
		$result=array();
		foreach ($query->result() as $row)
		{
			    $result['tool_id']=$row->tool_id;
			    $result['tool_code']=$row->tool_code;
		    
		}
		return $result;

	}

	public function getToolIdFromToolCode($tool_code="")
	{
		$this->db->select('tool_id');
		$this->db->from('tool');
		$this->db->where('tool_code',$tool_code);
		$query = $this->db->get();
		foreach ($query->result() as $row)
		{
			   return $row->tool_id;
		    
		}
		

	}

	public function getNominalTypes($tool_id=0)
	{
		$this->db->select('*');
		$this->db->from('tool_nominal_type');
		$this->db->join('nominal_type', 'tool_nominal_type.nt_id = nominal_type.nt_id');
		$this->db->where('tool_nominal_type.tool_id',$tool_id);
		$query = $this->db->get();
		$result=$query->result();
		return $result;
	}

	public function getToolingMaster($nominal_types=array())
	{
		//get the columns
		$columns=array();
		foreach($nominal_types as $k=>$v)
		{
			$columns[]="`".$v->nt_name."`";
			$v->tnt_value=str_replace("\"",' INCH',$v->tnt_value);

			$key[]="`".$v->nt_name."`";
			$value[]=$v->tnt_value;
		}
		$wheres=array_combine($key,$value);

		//format the columns
		$z=sizeof($columns);
		$x=1;
		//$column='';
 
 		$column=implode(", ",$columns);

		$queries='';
		$queries='SELECT '.$column.' FROM '.'tooling_master WHERE ';
		
		$xx=1;
		foreach($wheres as $w=>$z)
		{
			if(sizeof($wheres)>$xx)
			$queries.=$w.' = '."'".$z."'".' AND ';
			else
				$queries.=$w.' = '."'".$z."'".'';
			$xx++;
		}

		$query = $this->db->query($queries);
		$result=$query->result();
		return $result;

		/*
		WORKED ->
		SELECT `ID`, `OD`, `DRAWING NAME` FROM (`tooling_master`) WHERE `ID` = '200' AND `OD` = '300' AND `DRAWING NAME`='MANDREL 11.81 INCH'
		
		NOT WORKED -> , dont know fukin why
		SELECT ID, OD, DRAWING NAME FROM tooling_master WHERE 'ID' = 200 AND 'OD' = 300 AND 'DRAWING NAME' = MANDREL 11.81 INCH
		*/
	}



	//get tool_id from tool_rule table
	public function getAllNominalColumn()
	{
		$this->db->select('*');
		$this->db->from('layer_tool_nominal');
		$this->db->join('nominal_column', 'layer_tool_nominal.nc_id = nominal_column.nc_id');
		$query = $this->db->get();
		$result=$query->result();
		return $result;
	}

		public function getWholeNominalColumn()
	{
		$this->db->select('*');
		$this->db->from('nominal_column');
		$query = $this->db->get();
		$result=$query->result();
		return $result;
	}

	public function getAllNominalColumnWithValues($column_name,$layer_name=''){
		$this->db->select($column_name);
		$this->db->from('imported_project');
		$this->db->where('layer_name',$layer_name);
		$this->db->limit(1);
		$query = $this->db->get();
		$result=$query->result();
		return $result;
	}

	public function getNominalColumnValueFromImportedProject($column_name)
	{
		$this->db->select($column_name);
		$this->db->from('imported_project');
		$this->db->limit(1);
		$query = $this->db->get();
		$result=$query->result();
		return $result;
	}

	public function getNominalColumnName($nc_id)
	{
		$this->db->select('nc_name');
		$this->db->from('nominal_column');
		$this->db->where('nc_id', $nc_id);
		$query = $this->db->get();
		$result=$query->result();
		return $result;
	}

	public function getToolFromLayerId($layer_id=0)
	{
		$this->db->select('*');
		$this->db->from('tool too');
		$this->db->join('layer_tool lt', 'lt.tool_id = too.tool_id');
		$this->db->join('tool_tool_nominal ttn', 'ttn.tool_id = too.tool_id', 'left');
		$this->db->join('nominal_column nc', 'nc.nc_id = ttn.nc_id', 'left');
		$this->db->where('lt.layer_id', $layer_id);
		$this->db->group_by('too.tool_id');
		$query = $this->db->get();
		$result=$query->result();
		return $result;
	}

	public function getToolImage($tool_id)
	{
		$this->db->select('file_url');
		$this->db->from('tool');
		$this->db->where('tool_id', $tool_id);
		$query = $this->db->get();
		foreach ($query->result() as $row)
		{
			   return $row->file_url;
		    
		}
	}



}
?>