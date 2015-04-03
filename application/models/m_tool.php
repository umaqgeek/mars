<?php
class M_tool extends CI_Model  {
	
	public function getToolDetail($tool_id)
	{
		$this->db->select('*');
		$this->db->from('tool');
		$this->db->where('tool_id', $tool_id);
		$query = $this->db->get();
		$result = $query->result();
		return $result;
	}
 

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
	
	public function getToolFormulaDetails($tool_code="", $param_number=1)
	{
		$this->db->select('*');
		$this->db->from('tool too, param pa, rule_param rp');
		$this->db->where('too.tool_id = pa.tool_id');
		$this->db->where('too.tool_code', $tool_code);
		$this->db->where('pa.param_number', $param_number);
		$this->db->where('pa.param_id = rp.param_id');
		$this->db->where('(rp.pio_id = 2 OR rp.pio_id = 3)');
		$query = $this->db->get();
		return $query->result();
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
	
	public function checkExist($tablename, $columnname, $dbname='marsdb')
	{
		/*
		SELECT * 
		FROM information_schema.COLUMNS 
		WHERE 
			TABLE_SCHEMA = 'db_name' 
		AND TABLE_NAME = 'table_name' 
		AND COLUMN_NAME = 'column_name'
		*/
		$sql = sprintf("SELECT * 
		FROM information_schema.COLUMNS 
		WHERE 
			TABLE_SCHEMA = '%s' 
		AND TABLE_NAME = '%s' 
		AND COLUMN_NAME = '%s'", $dbname, $tablename, $columnname);
		$query = $this->db->query($sql);
		$result=$query->result();
		if (isset($result) && NULL != $result && !empty($result)) {
			return true;
		} else {
			return false;
		}
	}
	
	public function getToolingMaster2($tooling_name, $tool_id=-1, $nts)
	{
		$sql = sprintf("SELECT * FROM tool_nominal_type WHERE tool_id = '%s' ", $tool_id);
		$q = $this->db->query($sql);
		$rr = $q->result();
		if (!empty($rr)) {
			
			$arrNew = array();
			
			foreach ($rr as $r) {
				$nt_id = $r->nt_id;
				foreach ($nts as $n) {
					if ($n['nt_id'] == $nt_id) {
						
						$arrNew[] = $n;
					}
				}
			}
		
			$sql = "SELECT *, 
			`QUANTITY` AS qty_x, 
			`DRAWING_NO` AS drwg_no_x, 
			`TOOLING_NAME` AS tooling_name_x 
			FROM tooling_master2 WHERE 1=1 ";
			
			$sql .= sprintf("AND `TOOLING_NAME` = '%s' ", $tooling_name);
			$siAN = sizeof($arrNew);
			
			foreach ($arrNew as $an) {
				$nt_name = $an['nt_name'];
				$nt_value = $an['nt_value'];
				$col_sql = (is_numeric($nt_value)) ? ("CAST(%s AS DECIMAL(20, 1))") : ("%s");
				$val_sql = (is_numeric($nt_value)) ? ("CAST('%s' AS DECIMAL(20, 1)) ") : ("'%s' ");
				$sql .= sprintf("AND ".$col_sql." = ".$val_sql, $nt_name, $nt_value);
			}
			//echo $sql;
			if ($siAN <= 0) {
				return NULL;
			}
			
			$query = $this->db->query($sql);
			$result = $query->result();
			return $result;
		} else {
			return NULL;
		}
	}
	
	public function getToolingMaster3($tooling_name, $tool_code='-', $minimum=0, $maximum=999999)
	{
		$sql = sprintf("SELECT * 
					   FROM tool_nominal_type tnt, tool t, nominal_type nt 
					   WHERE tnt.tool_id = t.tool_id 
					   AND tnt.nt_id = nt.nt_id 
					   AND t.tool_code LIKE '%%%s%%' 
					   GROUP BY tnt.tnt_id ", $tool_code);
		$q = $this->db->query($sql);
		$rr = $q->result();
		if (!empty($rr)) {
			
			$arrNew = array();
			
			foreach ($rr as $r) {
				$arrNew[] = array(
					'nt_name' => $r->nt_name
				);
			}
		
			$sql = "SELECT *, 
			`QUANTITY` AS qty_x, 
			`DRAWING_NO` AS drwg_no_x, 
			`TOOLING_NAME` AS tooling_name_x 
			FROM tooling_master2 WHERE 1=1 ";
			
			$sql .= sprintf(" AND `TOOLING_NAME` = '%s' ", $tooling_name);
			
			$siAN = sizeof($arrNew);
			if ($siAN <= 0) {
				return NULL;
			}
			
			foreach ($arrNew as $an) {
				$nt_name = $an['nt_name'];
				$col_sql_min = (is_numeric($minimum)) ? ("CAST(%s AS DECIMAL(20, 1))") : ("%s");
				$col_sql_max = (is_numeric($maximum)) ? ("CAST(%s AS DECIMAL(20, 1))") : ("%s");
				$val_sql_min = (is_numeric($minimum)) ? ("CAST('%s' AS DECIMAL(20, 1))-1") : ("'%s' ");
				$val_sql_max = (is_numeric($maximum)) ? ("CAST('%s' AS DECIMAL(20, 1))+1") : ("'%s' ");
				$sql .= sprintf(" AND (".$col_sql_min." > ".$val_sql_min." AND ".$col_sql_max." < ".$val_sql_max.")", $nt_name, $minimum, $nt_name, $maximum);
			}
			
			$query = $this->db->query($sql);
			$result = $query->result();
			return $result;
		} else {
			return NULL;
		}
	}
	
	public function getToolingMaster4($tooling_name, $tool_code='-', $minimum, $maximum)
	{
		//$minimum = 0;
		//$maximum = 0;
		
		//$sql = sprintf("SELECT * FROM tool WHERE tool_code LIKE '%%%s%%' ", $tool_code);
		//$q1 = $this->db->query($sql);
		//$rr1 = $q1->result();
		//if (!empty($rr1)) {
		//	$minimum = $rr1[0]->min_range;
		//	$maximum = $rr1[0]->max_range;
		//}
		
		$sql = sprintf("SELECT * 
					   FROM tool_nominal_type tnt, tool t, nominal_type nt 
					   WHERE tnt.tool_id = t.tool_id 
					   AND tnt.nt_id = nt.nt_id 
					   AND t.tool_code LIKE '%%%s%%' 
					   GROUP BY tnt.tnt_id ", $tool_code);
		$q = $this->db->query($sql);
		$rr = $q->result();
		if (!empty($rr)) {
			
			$arrNew = array();
			
			foreach ($rr as $r) {
				$arrNew[] = array(
					'nt_name' => 'OD'
				);
			}
		
			$sql = "SELECT *, 
			`QUANTITY` AS qty_x, 
			`DRAWING_NO` AS drwg_no_x, 
			`TOOLING_NAME` AS tooling_name_x 
			FROM tooling_master2 WHERE 1=1 ";
			
			$sql .= sprintf(" AND `TOOLING_NAME` = '%s' ", $tooling_name);
			
			$siAN = sizeof($arrNew);
			if ($siAN <= 0) {
				return NULL;
			}
			
			foreach ($arrNew as $an) {
				$nt_name = $an['nt_name'];
				$col_sql_min = (is_numeric($minimum)) ? ("CAST(%s AS DECIMAL(20, 1))") : ("%s");
				$col_sql_max = (is_numeric($maximum)) ? ("CAST(%s AS DECIMAL(20, 1))") : ("%s");
				$val_sql_min = (is_numeric($minimum)) ? ("CAST('%s' AS DECIMAL(20, 1))-1") : ("'%s' ");
				$val_sql_max = (is_numeric($maximum)) ? ("CAST('%s' AS DECIMAL(20, 1))+1") : ("'%s' ");
				$sql .= sprintf(" AND (".$col_sql_min." > ".$val_sql_min." AND ".$col_sql_max." < ".$val_sql_max.")", $nt_name, $minimum, $nt_name, $maximum);
			}
			
			$query = $this->db->query($sql);
			$result = $query->result();
			return $result;
		} else {
			return NULL;
		}
	}

	public function getToolingMaster($nominal_types=array())
	{
		//print_r($nominal_types); die();
		//get the columns
		$columns=array();
		foreach($nominal_types as $k=>$v)
		{
			if ($this->checkExist('tooling_master2', $v->nt_name)) {
				$columns[]="`".$v->nt_name."`";
				$v->tnt_value=str_replace("\"",' INCH',$v->tnt_value);
	
				$key[]="`".$v->nt_name."`";
				$value[]=$v->tnt_value;
			}
		}
		$wheres=array_combine($key,$value);

		//format the columns
		$z=sizeof($columns);
		$x=1;
		//$column='';
 
 		$column=implode(", ",$columns);

		$queries='';
		//$queries='SELECT '.$column.' FROM '.'tooling_master2 WHERE ';
		$queries="SELECT *, 
		`QUANTITY` AS qty_x, 
		`DRAWING_NO` AS drwg_no_x, 
		`TOOLING_NAME` AS tooling_name_x 
		FROM tooling_master2 WHERE ";
		
		$xx=1;
		foreach($wheres as $w=>$z)
		{
			if(sizeof($wheres)>$xx)
			$queries.=$w.' = '."'".$z."'".' AND ';
			else
				$queries.=$w.' = '."'".$z."'".'';
			$xx++;
		}
		
		//print_r($queries); die();

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
	
	public function getToolFromLayerName($layer_name)
	{
		$this->db->select('*');
		$this->db->from('tool too');
		$this->db->join('layer_tool lt', 'lt.tool_id = too.tool_id');
		$this->db->join('layer l', 'l.layer_id = lt.layer_id');
		$this->db->join('tool_tool_nominal ttn', 'ttn.tool_id = too.tool_id', 'left');
		$this->db->join('nominal_column nc', 'nc.nc_id = ttn.nc_id', 'left');
		$this->db->where('l.layer_description', $layer_name);
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
	
	public function getToolImage1($tool_id)
	{
		$this->db->select('*');
		$this->db->from('tool');
		$this->db->where('tool_id', $tool_id);
		$query = $this->db->get();
		foreach ($query->result() as $row)
		{
			   return $row;
		    
		}
	}

	public function getToolImage2($tool_code)
	{
		$this->db->select('file_url');
		$this->db->from('tool');
		$this->db->like('tool_code', $tool_code);
		$query = $this->db->get();
		foreach ($query->result() as $row)
		{
			   return $row->file_url;
		    
		}
	}

}
?>