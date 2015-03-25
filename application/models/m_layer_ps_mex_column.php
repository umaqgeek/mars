<?php
  class M_layer_ps_mex_column extends CI_Model {
	  
	  function getAll() {
		  $this->db->select('*');
		  $this->db->from('layer_ps_mex_column lpmc');
		  $q = $this->db->get();
		  if($q->num_rows() > 0) {
			  foreach($q->result() as $r) {
				  $d[] = $r;
			  }
			  return $d;
		  }
	  }
	  
	  function get($id) {
		  $this->db->select('*');
		  $this->db->from('layer_ps_mex_column lpmc');
		  $this->db->where('lpmc.lpmc_id', $id);
		  $q = $this->db->get();
		  if($q->num_rows() > 0) {
			  foreach($q->result() as $r) {
				  $d[] = $r;
			  }
			  return $d;
		  }
	  }
	  
	  function add($data) {
		  if($this->db->insert('layer_ps_mex_column', $data)) {
			  return $this->db->insert_id();
		  } else {
			  return 0;
		  }
	  }
	  
	  function edit($id, $data) {
		  $this->db->where('lpmc_id', $id);
		  return $this->db->update('layer_ps_mex_column', $data);
	  }
	  
	  function delete($id) {
		  $this->db->where('lpmc_id', $id);
		  return $this->db->delete('layer_ps_mex_column');
	  }
	
  }

?>