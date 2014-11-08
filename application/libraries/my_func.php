<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class My_Func {

    public function __construct() {
        //parent::__construct();
        $this->obj = &get_instance();
        
    }

    public function getParamValue($rule_id=0,$param_number=0)
    {
    	$CI = $this->obj;
    		//$CI->db->select('rule_param.rp_post_value,rule_param.rp_id');
        $CI->db->select('*');
			$CI->db->from('rule_param');
			$CI->db->join('rule', 'rule.rule_id = rule_param.rule_id');
			$CI->db->join('param', 'rule_param.param_id = param.param_id');
			$CI->db->where('rule.rule_id',$rule_id);
			$CI->db->where('param.param_number',$param_number);
 			$query = $CI->db->get();
 			
			return $query->result();
    }

    public function getRuleNumber($rule_id=0)
    {
         $CI = $this->obj;
            $CI->db->select('rule_number');
            $CI->db->from('rule');
            $CI->db->where('rule_id',$rule_id);
             $query = $CI->db->get();
             $results=array();
           $results=$query->result();
            foreach($results as $r)
           {
            return $r->rule_number;
           }
    }

    public function getlayerName($layer_id=0)
    {
         $CI = $this->obj;
            $CI->db->select('layer_description');
            $CI->db->from('layer');
            $CI->db->where('layer_id',$layer_id);
             $query = $CI->db->get();
             $results=array();
           $results=$query->result();
            foreach($results as $r)
           {
            return $r->layer_description;
           }
    }

    public function getToolName($tool_id=0)
    {
         $CI = $this->obj;
            $CI->db->select('tool_description');
            $CI->db->from('tool');
            $CI->db->where('tool_id',$tool_id);
             $query = $CI->db->get();
             $results=array();
           $results=$query->result();
            foreach($results as $r)
           {
            return $r->tool_description;
           }
    }

     public function getToolCode($tool_id=0)
    {
         $CI = $this->obj;
            $CI->db->select('tool_code');
            $CI->db->from('tool');
            $CI->db->where('tool_id',$tool_id);
             $query = $CI->db->get();
             $results=array();
           $results=$query->result();
            foreach($results as $r)
           {
            return $r->tool_code;
           }
    }

    public function checkParamToolRule($tool_id){
           $CI = $this->obj;
            $CI->db->select('rule_id');
            $CI->db->from('tool_rule');
            $CI->db->where('tool_id',$tool_id);
             $query = $CI->db->get();
             $results=array();
           $results=$query->result();
           $hasil=array();
            foreach($results as $r)
           {
            $hasil[]=$r->rule_id;
           }
           return $hasil;
    }

    public function validate_add_param($post_array=array())
    {
      $tool_id=$post_array['tool_id'];
      $param_number=$post_array['param_number'];

        $CI = $this->obj;
            $CI->db->select('*');
            $CI->db->from('param');
             $CI->db->where('param.tool_id',$tool_id);
             $CI->db->where('param.param_number',$param_number);
             $query = $CI->db->get();
             $results=array();
           $results=$query->result();

          if(sizeof($results)<0)
          return true; //pass validation
          else
          return false; 
    }

     public function validate_number_of_param($post_array=array())
    {
      $tool_id=$post_array['tool_id'];
      $param_number=$post_array['param_number'];

        $CI = $this->obj;
            $CI->db->select('*');
            $CI->db->from('param');
             $CI->db->where('param.tool_id',$tool_id);
             //$CI->db->where('param.param_number',$param_number);
             $query = $CI->db->get();
             $results=array();
           $results=$query->result();

          if(sizeof($results)<=10)
          return true; //pass validation
          else
          return false; 
    }

    public function getPioID($rp_id=null)
    {



        $CI = $this->obj;
            $CI->db->select('pio_id');
            $CI->db->from('rule_param');
             $CI->db->where('rule_param.rp_id',$rp_id);
             //$CI->db->where('param.param_number',$param_number);
             $query = $CI->db->get();
             $results=array();
           $results=$query->result();
          foreach($results as $r)
           {
               return $r->pio_id;

           }
         
    }

    public function reCalculateFormula()
    {
      $string="";
      $formulas=array();
      $params=array();
      $nominals=array();
      $value=0;
        $CI = $this->obj;

      //get list of all formulas
      $formulas=$this->formulaGetAllFormulas();

      //get list of all params
        $params=$this->formulaGetAllParams();

      //get list of all nominals
          $nominals=$this->formulaGetAllNominals();
 $not_founds=array();
      //loop each rule_param and scan the formula with it's params
          foreach($formulas as $r=>$v)
          {
            $string=$v->rp_formula;

            foreach($nominals as $n=>$s)
              {
             $ncname=$s->nc_name;
               // print_r($string);
               // echo "!!";

                if($string!=null)
                {
                 /* print_r($string);
                echo ":";
                print_r($ncname);
                echo "}";
                */

              
                if(strpos($string,$ncname)!==false){
                   $valu=$this->getValueFromNc_name($ncname);
                   //print_r($valu);
                   
                    foreach($valu as $z)
                    {
                      $value=$z->$ncname;
                    }
                
                  
                     $string=str_replace($ncname,$value,$string);
                      $data['rp_pre_value']=$string;
                        $new_post_value="";

                        /*print_r($string);
                        print_r('____');
                        print_r('UDAH NEMU');
                        
                        print_r($this->calculate_string($string));
                        die();
                        */

                      if($this->calculate_string($string)!=false){
                           $new_post_value=$this->calculate_string($string);

                             //save new post value to rp_post value
                           $data['rp_post_value']=$new_post_value;
                            $CI->db->where('rp_id', $v->rp_id);
                           $CI->db->update('rule_param',$data);
                           $not_founds[]=$v->rp_id;
                        }
                        
                     
                 
                }
                
                   
                  
                }
               
       // print_r(' lanjut ');         
              }//end nominals
            }
            $rp_ids=array();
            $result=array();
          foreach($formulas as $r=>$v)
          {
            $rp_ids[]=$v->rp_id;
          }
          

$result=array_diff($rp_ids,$not_founds);

  if(is_array($result))
  {
      foreach($result as $r)
          {
             $strings=$this->getFormulaFromRpID($r);
             foreach($strings as $x=>$xx)
             {
              $string=$xx->rp_formula;
             }
                //replace the found params within the formula
              foreach($params as $p=>$m)
              {
            
                if($string!=null)
                {
                /* print_r($string);
                echo ":";
                print_r($m->param_code);
                echo "}";
                */
                
                if(strpos($string,$m->param_code)!==false){
                   $value=$this->getValueFromParamID($m->param_id);
                     $string=str_replace($m->param_code,$value,$string);
                      $data['rp_pre_value']=$string;
                        $new_post_value="";

                       // print_r($string);

                      if($this->calculate_string($string)!=false){
                           $new_post_value=$this->calculate_string($string);
                             //save new post value to rp_post value
                           // print_r($new_post_value);
                           $data['rp_post_value']=$new_post_value;
                           $CI->db->where('rp_id', $r);
                            $CI->db->update('rule_param',$data);
                           
                        }
                       
                }
                    
                   // echo "ga nemu";
                    //echo "||";


                  /* if(strpos($string,$m->param_code)!==false)
                  {
                     $value=$this->getValueFromParamID($m->param_id);
                     $string=str_replace($m->param_code,$value,$string);
                     print_r($string);
                     echo "|";
                  }
                  else
                  {
                    echo "ga nemu";
                    echo "||";
                  }
                  */
                }
               
               
              }//end params
                
               
          }
         // die();
  }
 
    }

       public function getFormulaFromRpID($rp_id){
       $CI = $this->obj;
      $CI->db->select('rp_formula');
            $CI->db->from('rule_param');
            $CI->db->where('rp_id',$rp_id);
             $query = $CI->db->get();
             $formulas=array();
           $formulas=$query->result();
           return $formulas;
    }

    public function formulaGetAllParams(){
       $CI = $this->obj;
            $CI->db->select('param_code,param_id');
            $CI->db->from('param');
             $query = $CI->db->get();
             $params=array();
           $params=$query->result();
           return $params;
    }

     public function formulaGetAllFormulas(){
       $CI = $this->obj;
      $CI->db->select('rp_formula,rp_id,rp_post_value,pio_id');
            $CI->db->from('rule_param');
             $query = $CI->db->get();
             $formulas=array();
           $formulas=$query->result();
           return $formulas;
    }

    public function formulaGetAllNominals()
    {
       $CI = $this->obj;
      $CI->db->select('nc_name');
            $CI->db->from('nominal_column');
             $query = $CI->db->get();
             $nominals=array();
           $nominals=$query->result();
           return $nominals;
    }


public function getValueFromParamID($param_id)
{
  $CI = $this->obj;
            $CI->db->select('rp_post_value');
            $CI->db->from('rule_param');
               $CI->db->where('rule_param.param_id',$param_id);
             $query = $CI->db->get();
             $results=array();
           $results=$query->result();

           foreach($results as $r=>$v)
           {
            return $v->rp_post_value;
           }
}

public function getValueFromNc_name($nc_name)
{
  $CI = $this->obj;
         $CI->db->select($nc_name);
    $CI->db->from('imported_project');
    $CI->db->limit(1);
    $query = $CI->db->get();
    $result=$query->result();
    return $result;
}

    public function checkRule($data=array()){
            
            //fetch how many rules attached to the selected tool
         //from that rule_id , compares the var1 and the var2 with idnom
            $CI = $this->obj;
            $CI->db->select('*');
            $CI->db->from('rule');
            $CI->db->join('tool_rule', 'rule.rule_id = tool_rule.rule_id');
            $CI->db->where('tool_rule.tool_id',$data['selected_tool_id']);
             $query = $CI->db->get();
             $results=array();
           $results=$query->result();
            

            //define the measurement, and then convert the idnom
           $idnom="";
           // print_r($this->getLayerMeasurement($data['layer_id'])); die();
          
           $idnom=$this->calculate_string(str_replace('idnom',$data['idnom'],$this->getToolMeasurement($data['selected_tool_id'])));
           $CI->session->userdata('diaintercouche',$idnom);
      
            //iterate through the rules
           foreach($results as $r)
           {
                if($this->calculateRuleCondition($idnom,$r->var1,$r->var2)!=false)
                {
                     $selected_rule_id=$r->rule_id;
                     $CI->session->set_userdata('selected_rule_id', $selected_rule_id);
                     break;
                }

           }
    
           if(!empty($selected_rule_id))
            return $selected_rule_id;
            else
            return false;
    }

    public function getTntId($tool_id,$nt_name)
    {
         $CI = $this->obj;
            $CI->db->select('tnt_id');
            $CI->db->from('tool_nominal_type');
            $CI->db->join('nominal_type','tool_nominal_type.nt_id=nominal_type.nt_id');
            $CI->db->where('tool_id',$tool_id);
             $CI->db->where('nt_name',$nt_name);
             $query = $CI->db->get();
           
        
            foreach ($query->result() as $row)
            {
     
               return $row->tnt_id;
            }
       
    }

    public function getToolMeasurement($tool_id=0){
        $CI = $this->obj;
            $CI->db->select('tm_conversion_formula');
            $CI->db->from('tool_measurement');
            $CI->db->where('tool_id',$tool_id);
             $query = $CI->db->get();
           
           if(!empty($query->result))
           {
            foreach ($query->result() as $row)
            {
               return $row->tm_conversion_formula;
            }
           }
           else
           {
            return "idnom";
           }
             
    }

       public function checkParamifExistTool($tool_id=0,$param_number=0){
        $CI = $this->obj;
            $CI->db->select('param_id');
            $CI->db->from('param');
            $CI->db->where('tool_id',$tool_id);
            $CI->db->where('param_number',$param_number);
             $query = $CI->db->get();
           if(sizeof($query->result())>0) //if exist
           {
            return true;
           }
           else
           {
            return false; //if not exist then add
           }
            
    }

        public function calculate_string($string){
            $string = trim($string);
             $flag=false;
           

            $string = preg_replace('/[^0-9\+\-\*\/\(\)[46] ]/i', '', $string);
         

           if($string!=null || $string!=false){

           /* if(is_numeric($string))
            {
               $compute = create_function('', 'return (' . $string . ');' );

            }
            else
            {
              $compute=false;
            }
            */
            $compute = create_function('', 'return (' . $string . ');' );

            if($compute==false)
            $flag=false;
            else
              $flag=true;
          }

            if($flag==false)
              return false;
            else
            return 0 + $compute();
        }

        public function calculateRuleCondition($idnom,$var1,$var2){
            /*$whole=array();
            //VAR1>X<=VAR2
            $whole=explode('X',$string);

            $left=array();
            $right=array();*/

            //temporary hardcode
            if($idnom>$var1 AND $idnom<=$var2)
            return true;
            else
                return false;

        }

            public function getProjectTransacId($data){
            $CI = $this->obj;

            $CI->db->select('transaction_id');
            $CI->db->from('project');
            $CI->db->where('structure_number',$data->structure_number);
               $CI->db->where('selected_layer_id',$data->selected_layer_id);
                  $CI->db->where('selected_tool_id',$data->selected_tool_id);
                     $CI->db->where('idnom',$data->idnom);
             $query = $CI->db->get();
           
             foreach ($query->result() as $row)
            {
               return $row->transaction_id;
            }
    }

}
