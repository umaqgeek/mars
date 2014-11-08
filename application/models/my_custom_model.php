<?php
class My_custom_model extends grocery_CRUD_Model  {
 
 private  $query_str = ''; 
 
    public function getDistinctLayer()
    {
            
             $query=$this->db->query("SELECT DISTINCT layer_name FROM imported_project");
              
                        $results_array=$query->result();
                      
                        return $results_array;  
    }
 
    public function set_query_str($query_str) {
        $this->query_str = $query_str;

    }
}
?>