<?php if ( ! defined('BASEPATH')) die();
class Admin extends CI_Controller {


 function __construct()
    {
        parent::__construct();
 		
        $this->load->library('grocery_CRUD');
 		$this->load->library('SimpleLoginSecure');
 	}


	public function index()
	{
		$this->load->view('header');
		$this->load->view('nav');
		$data['sidebar']=$this->load->view('sidebar');

		$this->load->view('dashboard',$data);

 		
	//$this->load->view('footer'); crash the js of  grocery crud
	}

	//display structure number form
	public function structureNumber()
	{
		$this->load->view('header');
		$this->load->view('nav');
		$data['sidebar']=$this->load->view('sidebar');
		
		$this->load->view('structurenumber/viewStructureNumberForm',$data);
	}

	//add the link into searchStructureNumber/add for only display add form
	public function searchStructureNumber()
	{
		$this->load->view('header');
		$this->load->view('nav');
		$data['sidebar']=$this->load->view('sidebar');

		$crud = new grocery_CRUD();
		$crud->set_theme('datatables');

 		 $crud->set_table('project');
 		 $crud->columns('structure_number','project_name','project_number','section_number','plf_length','overlength');
 		 $crud->fields('structure_number','project_name','project_number','section_number','plf_length','overlength');

 		// $crud->display_as('user_email','Email');
 		//$crud->change_field_type('structure_number','invisible'); 
  		/*$crud->unset_fields('role_id');
  		$crud->change_field_type('magicnum','invisible');
  		$crud->change_field_type('user_date','invisible');
  		$crud->change_field_type('user_modified','invisible');
  		 $crud->change_field_type('user_pass', 'password');
		*/

  		  $crud->callback_add_field('structure_number', function () {
  		  	$structureNumber=$this->input->post('txtStructureNumber');
        return '<input type="text" value="'.$structureNumber.'" name="structure_number">';
    	});

  		    $crud->set_lang_string('insert_success_message',
		 'Your data has been successfully stored into the database.<br/>Please wait while you are redirecting to the list page.
		 <script type="text/javascript">
		  window.location = "'.site_url('admin/displayDistinctLayerTemp').'";
		 </script>
		 <div style="display:none">
		 '
   );

	  	 $crud->unset_back_to_list();
		//$crud->unset_list();
	  	  
			    try{
		    $output = $crud->render();
		} catch(Exception $e) {
		    show_error($e->getMessage());
		}
	    $this->_generate_table($output);
	}

	 function _generate_table($output = null)
 
    {
        $this->load->view('structurenumber/addStructureNumber.php',$output);    
    }

 

    public function displayLayer(){

    	$this->load->view('header');
		$this->load->view('nav');
		$data['sidebar']=$this->load->view('sidebar');
		//$this->load->model('MyCustomModel');
		$crud = new grocery_CRUD();
		$crud->set_theme('datatables');
		$crud->set_model('my_custom_model');
 		 $crud->set_table('imported_project');
 		
 		 $crud->columns('layer_name');
 		 $crud->fields('layer_name');

 		 $crud->basic_model->set_query_str("SELECT DISTINCT layer_name FROM imported_project WHERE structure='ST15261797'");
    	
    	 $output = $crud->render();

    	 $this->_generate_table_layer($output);


    }

/*
    public function layerManagement(){
    	$this->load->view('header');
		$this->load->view('nav');
		$data['sidebar']=$this->load->view('sidebar');

		$crud = new grocery_CRUD();
		$crud->set_theme('datatables');

 		 $crud->set_table('layer');
 		
  		  
			    try{
		    $output = $crud->render();
		} catch(Exception $e) {
		    show_error($e->getMessage());
		}
	    $this->_generate_table_layer_management($output);


    }

     function _generate_table_layer_management($output = null)
 
    {
        $this->load->view('layer/viewLayerManagement.php',$output);    
    }
    */

    public function materialManagement(){
    	$this->load->view('header');
		$this->load->view('nav');
		$data['sidebar']=$this->load->view('sidebar');

		$crud = new grocery_CRUD();
		$crud->set_theme('datatables');

 		 $crud->set_table('material');
 		
  		  
			    try{
		    $output = $crud->render();
		} catch(Exception $e) {
		    show_error($e->getMessage());
		}
	    $this->_generate_table_material_management($output);


    }

     function _generate_table_material_management($output = null)
 
    {
        $this->load->view('material/viewMaterialManagement.php',$output);    
    }

    public function displayDistinctLayerTemp($structure_number="ST15261797"){
    	$this->load->view('header');
		$this->load->view('nav');
		$data['sidebar']=$this->load->view('sidebar');
		//$this->load->model('MyCustomModel');
		$this->load->model('m_layer');
		$results=array();
		$results=$this->m_layer->getDistinctLayer($structure_number);
		$data['results']=$results;
		$data['structure_number']=$structure_number;
		$this->load->view('layer/viewDistinctLayer',$data);
    }

     function _generate_table_layer($output = null)
 
    {
        $this->load->view('layer/viewDistinctLayer.php',$output);    
    }

    public function toolManagement(){
    	$this->load->view('header');
		$this->load->view('nav');
		$data['sidebar']=$this->load->view('sidebar');

		$crud = new grocery_CRUD();
		$crud->set_theme('datatables');

 		 $crud->set_table('tool');
 		$crud->set_relation('rule_id','rule','rule_number');

		try{
		    $output = $crud->render();
		} catch(Exception $e) {
		    show_error($e->getMessage());
		}

	    $this->_generate_table_material_management($output);
    }

     function _generate_table_tool_management($output = null)
 
    {
        $this->load->view('tool/viewToolManagement.php',$output);    
    }

     public function importedManagement(){
    	$this->load->view('header');
		$this->load->view('nav');
		$data['sidebar']=$this->load->view('sidebar');

		$crud = new grocery_CRUD();
		$crud->set_theme('datatables');

 		 $crud->set_table('imported_project');
 		
		try{
		    $output = $crud->render();
		} catch(Exception $e) {
		    show_error($e->getMessage());
		}

	    $this->_generate_table_imported_management($output);
    }

     function _generate_table_imported_management($output = null)
 
    {
        $this->load->view('imported/viewImportedManagement.php',$output);    
    }

     public function layerToolManagement(){
    	$this->load->view('header');
		$this->load->view('nav');
		$data['sidebar']=$this->load->view('sidebar');

		$crud = new grocery_CRUD();
		$crud->set_theme('datatables');

 		$crud->set_table('layer');
 		$crud->set_relation_n_n('Tools', 'layer_tool', 'tool', 'layer_id', 'tool_id', 'tool_code','layer_tool_id');
    	
 		
		try{
		    $output = $crud->render();
		} catch(Exception $e) {
		    show_error($e->getMessage());
		}

	    $this->_generate_table_layertool_management($output);
    }

     function _generate_table_layertool_management($output = null)
 
    {
        $this->load->view('layer_tool/viewLayerToolManagement.php',$output);    
    }

     public function ruleManagement(){
    	$this->load->view('header');
		$this->load->view('nav');
		$data['sidebar']=$this->load->view('sidebar');

		$crud = new grocery_CRUD();
		$crud->set_theme('datatables');

 		 $crud->set_table('rule');
 		
		try{
		    $output = $crud->render();
		} catch(Exception $e) {
		    show_error($e->getMessage());
		}

	    $this->_generate_table_rule_management($output);
    }

     function _generate_table_rule_management($output = null)
 
    {
        $this->load->view('rule/ruleView.php',$output);    
    }
}