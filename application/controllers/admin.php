<?php
if (!defined('BASEPATH')) die();

class Admin extends MY_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->library('grocery_CRUD');
		$this->load->library('SimpleLoginSecure');
		$this->CI = & get_instance();
	}
	
	function test11()
	{
		$a = "5"; // var 1
		$b = "13"; // var 2
		$c = "3"; // var 3
		$ayat = $a . " * " . $b . " - " . $c; // operation
		$ayat = ltrim($ayat, "0"); // trim for leading zero
		$hasil = create_function("", "return (" . $ayat . ");"); // calculate
		echo $ayat . " = " . (0 + $hasil()); // output
	}

	public function index()
	{
		$this->load->view('template/header');
		$this->load->view('template/nav');
		$data['sidebar'] = $this->load->view('template/sidebar');
		$this->load->view('dashboard', $data);

		// $this->load->view('footer'); crash the js of  grocery crud

	}

	// display structure number form

	public function structureNumber()
	{
		$this->load->model('m_project');
		$this->load->view('template/header_datatable');
		$this->load->view('template/nav');
		$data['sidebar'] = $this->load->view('template/sidebar');

		// check if the previous staff have ever entered the structure number @ project table

		/*$projects=array();
		$projects=$this->m_project->getAllProjects();
		$data['projects']=$projects;

		// print_r($this->session->all_userdata()); die();

		*/
		if ($this->session->userdata('structure_number')) $this->session->unset_userdata('structure_number');
		if ($this->session->userdata('transaction_number')) $this->session->unset_userdata('transaction_number');

		// search query number

		$this->load->view('structurenumber/viewStructureNumberForm', $data);
		$this->load->view('template/footer_datatable');
	}

	public function addProjectView($structure_number = "")
	{
		if ($this->input->post('txtStructureNumber')) {
			$structure_number = $this->input->post('txtStructureNumber');
		}
		// check the existent of structure number
		$this->load->model('m_imported_project');
		$bol_struc = $this->m_imported_project->isExist($structure_number);
		if ($bol_struc == false) {
			$this->search_structure($structure_number);
			$bol_struc = $this->m_imported_project->isExist($structure_number);
			if ($bol_struc == false) {
				$this->session->set_flashdata('no_layer_or_tool', 'Structure Number not found!');
				redirect(site_url('admin/structureNumber'));
			}
		}
		
		$this->load->model('m_project');
		$this->load->view('template/header_datatable');
		$this->load->view('template/nav');
		$data['sidebar'] = $this->load->view('template/sidebar');
		$structure_number = $this->input->post('txtStructureNumber');
		$data['structure_number'] = $structure_number;

		// delete existing structure number session
		if ($this->session->userdata('structure_number'))
		{
			$this->session->unset_userdata('structure_number');
		}
		
		if (isset($_POST['search']))
		{
			// search if previous query was exist
			$data['projects'] = $this->m_project->getProjects($structure_number);
		}
		elseif (isset($_POST['addproject']))
		{
			$data['projects'] = null;
		}

		$this->load->view('structurenumber/viewStructureNumberFormTwo', $data);
		$this->load->view('template/footer_datatable');
	}

	public function addProjectDirect($structure_number = "")
	{
		$this->load->model('m_project');
		$this->load->view('template/header_datatable');
		$this->load->view('template/nav');
		$data['sidebar'] = $this->load->view('template/sidebar');
		$structure_number = $this->input->post('txtStructureNumber');
		$data['structure_number'] = $structure_number;

		// search if previous query was exist

		$data['projects'] = null;
		$this->load->view('structurenumber/viewStructureNumberFormTwo', $data);
		$this->load->view('template/footer_datatable');
	}

	public function addProject()
	{
		//print_r($this->session->all_userdata()); die();
		$sess = $this->session->all_userdata();
		$this->load->view('template/header');
		$this->load->view('template/nav');
		$data['sidebar'] = $this->load->view('template/sidebar');
		$structure_number = $this->input->post('structure_number');
		$data = array(
			'project_name' => $this->input->post('project_name') ,
			'structure_number' => $this->input->post('structure_number') ,
			'project_number' => $this->input->post('project_number') ,
			'section_number' => $this->input->post('section_number') ,
			'plf_length' => $this->input->post('plf_length') ,
			'transaction_id' => time() ,
			'overlength' => $this->input->post('overlength'),
			'user_id' => $sess['user_id']
		);
		$this->load->model('m_project');
		$flag = $this->m_project->Add('project', $data);
		$transaction_id = $data['transaction_id'];
		$this->session->set_userdata('transaction_id', $transaction_id);
		if ($flag != false)
		{
			$this->session->set_flashdata('project_add_sucess', 'Project is added successfully');
			$this->session->set_userdata('structure_number', $structure_number);
			$transaction_number = $transaction_id;
			$this->session->set_userdata('transaction_number', $transaction_number);
			redirect('admin/displayLayerDirect');
		}
		else
		{
			$this->session->set_flashdata('project_add_failed', 'Failed in adding project');
			redirect('admin/structureNumber');
		}

		// redirect to the next page

	}

	/*

	// add the link into searchStructureNumber/add for only display add form

	public function searchStructureNumber($structure_number=null)
	{
	$this->load->view('template/header');
	$this->load->view('template/nav');
	$data['sidebar']=$this->load->view('template/sidebar');
	$crud = new grocery_CRUD();
	$crud->set_theme('datatables');
	$crud->set_table('project');
	$crud->columns('structure_number','project_name','project_number','section_number','plf_length','overlength');
	$crud->fields('structure_number','project_name','project_number','section_number','plf_length','overlength','transaction_id');
	$structure_number=$this->input->get('txtStructureNumber');

	// $structure_number=$this->input->post('txtStructureNumber');

	$crud->change_field_type('transaction_id','hidden',time());
	$crud->field_type('structure_number', 'hidden', $structure_number);
	$crud->set_lang_string('insert_success_message',
	'Your data has been successfully stored into the database.<br/>Please wait while you are redirecting to the list page.
	<script type="text/javascript">
	window.location = "'.site_url('admin/displayDistinctLayerTemp/').'";
	</script>
	<div style="display:none">
	'
	);
	$crud->unset_back_to_list();

	// $crud->unset_list();

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

	*/
	public function addProjectAjax($val = 0)
	{
		$this->load->model('m_project');
		$this->load->view('template/header');
		$this->load->view('template/nav');
		$data['sidebar'] = $this->load->view('template/sidebar');

		// get structure_number from transaction timestamp

		$structure_number = $this->m_project->getTransIdByTransacId($val);
		if ($this->session->userdata('structure_number')) $this->session->unset_userdata('structure_number');
		if ($this->session->userdata('transaction_number')) $this->session->unset_userdata('transaction_number');
		$this->session->set_userdata('structure_number', $structure_number);
		$this->session->set_userdata('transaction_number', $val);
	}

	public function displayLayerDirect()
	{
		$this->load->model('m_layer');
		$this->load->model('m_project');
		$this->load->view('template/header_datatable');
		$this->load->view('template/nav');
		$data['sidebar'] = $this->load->view('template/sidebar');
		$structure_number = $this->session->userdata('structure_number');
		$transaction_number = $this->session->userdata('transaction_number');
		$data['projects'] = $this->m_project->getProjectByTransId($transaction_number);
		$distinctlayers = array();
		$distinctlayers = $this->m_layer->getDistinctLayer($structure_number);
		$data['layers'] = $distinctlayers;
		$this->load->view('structurenumber/viewDistinctLayer', $data);
		$this->load->view('template/footer_datatable');
	}

	public function displayLayer()
	{
		$this->load->model('m_layer');
		$this->load->view('template/header_datatable');
		$this->load->view('template/nav');
		$data['sidebar'] = $this->load->view('template/sidebar');
		$structure_number = $this->session->flashdata('structure_number');
		$distinctlayers = array();
		$distinctlayers = $this->m_layer->getDistinctLayer($structure_number);
		$data['layers'] = $distinctlayers;
		$this->load->view('structurenumber/viewDistinctLayer', $data);
		$this->load->view('template/footer_datatable');
	}

	/*
	public function layerManagement(){
	$this->load->view('template/header');
	$this->load->view('template/nav');
	$data['sidebar']=$this->load->view('template/sidebar');
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
	public function usermanagement()
	{
		$this->load->view('template/header');
		$this->load->view('template/nav');
		$data['sidebar'] = $this->load->view('template/sidebar');
		$crud = new grocery_CRUD();
		
		$crud->set_subject('User Management');
		
		$crud->set_theme('datatables');
		$crud->set_table('users');
		$crud->set_relation('role_id', 'role', 'role_name');
		$crud->columns('username', 'role_id');
		$crud->fields('username', 'role_id', 'user_pass');
		$crud->field_type('user_pass', 'password');
		$crud->callback_edit_field('user_pass', array(
			$this, 
			'set_password_input_to_empty'
		));
    	$crud->callback_add_field('user_pass', array(
			$this, 
			'set_password_input_to_empty'
		));
		$crud->callback_insert(array(
			$this,
			'register_user'
		));
		$crud->callback_update(array(
			$this,
			'edit_user'
		));
		try
		{
			$output = $crud->render();
		}

		catch(Exception $e)
		{
			show_error($e->getMessage());
		}

		$this->_generate_table_user_management($output);
	}

	function register_user($post_array)
	{
		return $this->simpleloginsecure->create($post_array['username'], $post_array['user_pass'], false, $post_array['role_id']);
	}
	
	function edit_user($post_array, $primary_key)
	{
		$post_array['user_pass'] = md5($post_array['user_pass']);
		return $this->simpleloginsecure->update_user($primary_key, $post_array);
	}
	
	function set_password_input_to_empty() {
    	return "<input type='password' name='user_pass' id='user_pass' value='' />";
	}

	function _generate_table_user_management($output = null)
	{
		$this->load->view('userManagementView.php', $output);
	}

	public function materialManagement()
	{
		$this->load->view('template/header');
		$this->load->view('template/nav');
		$data['sidebar'] = $this->load->view('template/sidebar');
		$crud = new grocery_CRUD();
		
		$crud->set_subject('Material Management');
		
		$crud->set_theme('datatables');
		$crud->set_table('material');
		$crud->set_relation('category_id', 'category', 'category_name');
		$crud->display_as('type_of_production', 'Type of Material');
		$crud->display_as('type_of_production_size', 'Size');
		$crud->display_as('code_one', 'Raw Material');
		$crud->display_as('code_two', 'STA Code');
		$crud->display_as('ref_num', 'Roller Set');
		$crud->display_as('category_id', 'Category Name');
		try
		{
			$output = $crud->render();
		}

		catch(Exception $e)
		{
			show_error($e->getMessage());
		}

		$this->_generate_table_material_management($output);
	}

	function _generate_table_material_management($output = null)
	{
		$this->load->view('material/viewMaterialManagement.php', $output);
	}

	function _generate_table_layer($output = null)
	{
		$this->load->view('layer/viewLayerManagement.php', $output);
	}

	public function displayDistinctLayerTemp($structure_number = "")
	{
		$this->load->view('template/header');
		$this->load->view('template/nav');
		$data['sidebar'] = $this->load->view('template/sidebar');
		$this->load->model('m_layer');
		$results = array();
		$results = $this->m_layer->getDistinctLayer($structure_number);
		$data['results'] = $results;
		$data['structure_number'] = $structure_number;
		$this->load->view('layer/viewDistinctLayer', $data);
	}

	public function displayDistinctLayerTempTwo($data = array(
		'layer_id' => 1,
		'material_id' => 20,
		'nominal_value' => 152.4
	))
	{
		$this->load->view('template/header');
		$this->load->view('template/nav');
		$data['sidebar'] = $this->load->view('template/sidebar');
		$this->load->model('m_rule');
		$data['results'] = $this->m_rule->getAllrule();
		$this->load->view('layer/viewDistinctLayerTempTwo', $data);
	}

	public function displayDistinctLayerTempThree($data = array(
		'layer_id' => 1,
		'material_id' => 20,
		'nominal_value' => 152.4
	))
	{
		$this->load->view('template/header');
		$this->load->view('template/nav');
		$data['sidebar'] = $this->load->view('template/sidebar');
		$this->load->model('m_rule');
		$data['results'] = $this->m_rule->getAllrule();
		$this->load->view('layer/viewDistinctLayerTempThree', $data);
	}

	public function toolNominalTypeManagement()
	{
		$this->load->view('template/header');
		$this->load->view('template/nav');
		$data['sidebar'] = $this->load->view('template/sidebar');
		$crud = new grocery_CRUD();
		$crud->set_theme('datatables');
		$crud->set_table('tool_nominal_type');
		$crud->set_relation('tool_id', 'tool', 'tool_code');
		$crud->set_relation('nt_id', 'nominal_type', 'nt_name');
		$crud->columns('tool_id', 'nt_id', 'tnt_value');
		$crud->fields('tool_id', 'nt_id', 'tnt_value');
		$crud->display_as('nt_id', 'Nominal Type');
		$crud->display_as('tool_id', 'Tool');
		$crud->display_as('tnt_value', 'Nominal Type Value');
		$crud->field_type('tool_id', 'readonly');
		$crud->set_lang_string('insert_success_message', 'Your data has been successfully stored into the database.<br/>Please wait while you are redirecting to the list page.
		 <script type="text/javascript">
		  window.location = "' . site_url('admin/toolManagement') . '";
		 </script>
		 <div style="display:none">
		 ');
		try
		{
			$output = $crud->render();
		}

		catch(Exception $e)
		{
			show_error($e->getMessage());
		}

		$this->_generate_table_tool_nominal_type($output);
	}

	function _generate_table_tool_nominal_type($output = null)
	{
		$this->load->view('tool_nominal/viewToolNominalTypeManagement.php', $output);
	}

	public function toolManagement()
	{
		$this->load->view('template/header');
		$this->load->view('template/nav');
		$data['sidebar'] = $this->load->view('template/sidebar');
		$crud = new grocery_CRUD();
		$crud->set_theme('datatables');
		$crud->set_table('tool');
		$crud->set_relation_n_n('nc_id', 'tool_tool_nominal', 'nominal_column', 'tool_id', 'nc_id', 'nc_name', 'priority');
		$crud->set_relation_n_n('nt_id', 'tool_nominal_type', 'nominal_type', 'tool_id', 'nt_id', 'nt_name', 'priority');
		$crud->set_relation_n_n('tm_id', 'tool_material', 'material', 'tool_id', 'material_id', 'material_code');

		// $crud->set_relation('tool_id','tool_nominal_type','tnt_id');

		$crud->display_as('nc_id', 'Nominal Column');
		$crud->display_as('nt_id', 'Nominal Type');
		$crud->display_as('tm_id', 'Material Code');
		$crud->display_as('tool_description', 'Tool Name');
		$crud->display_as('file_url', 'Image');
		$crud->callback_column('nt_id', array(
			$this,
			'_callback_tnt_value'
		));
		$crud->set_field_upload('file_url', 'assets/uploads/files');
		$crud->unset_texteditor('tool_description', 'full_text');
		
		//$crud->set_table_title('Tools Management');
		$crud->set_subject('Tools Management');
		
		try
		{
			$output = $crud->render();
		}

		catch(Exception $e)
		{
			show_error($e->getMessage());
		}

		$this->_generate_table_tool_management($output);
	}

	public function _callback_tnt_value($value, $row)
	{
		/*echo "value= "; print_r($value);
		echo "<br/>";
		print_r($row);
		*/

		// get the tnt_id from tool_id and nt_name

		$tool_id = $row->tool_id;
		$output = "";
		if (!empty($value))
		{
			$nt_names = array();
			$nt_names = explode(',', $value);
			foreach($nt_names as $n)
			{
				$tnts[] = array(
					'nt_name' => $n,
					'tnt_id' => $this->my_func->getTntId($tool_id, $n)
				);
			}

			if (!empty($tnts))
			{
				$x = 1;
				foreach($tnts as $n)
				{
					$output.= "<a href='" . site_url('admin/toolNominalTypeManagement/edit/' . $n['tnt_id']) . "'> " . $n['nt_name'] . " </a>";
					if (sizeof($n) != $x) $output.= ', ';
					$x++;
				}

				return $output;
			}
		}
		else
		{
			return $value;
		}
	}

	function _generate_table_tool_management($output = null)
	{
		$this->load->view('tool/viewToolManagement.php', $output);
	}
	
	public function backupAndRestore()
	{
		$this->load->view('template/header');
		$this->load->view('template/nav');
		$data['sidebar'] = $this->load->view('template/sidebar');
		$this->load->view('backupAndRestore/index.php', $data);
	}
	
	public function backupSQL()
	{
		$backupDate = date('Ymd.His');
		
		$path = 'C:/wamp/www/marsdb/BACKUP_DATABASE/';
		$backup_file = 'marsdb_backup_'.$backupDate.'.sql';
		$exportPath = $path.$backup_file;
		$db = 'marsdb';
		$table_name = 'rule';
		
		$dbhost = 'localhost';
		$dbuser = 'root';
		$dbpass = '';
		
		$command = "mysqldump --opt -h $dbhost -u $dbuser -p $dbpass ".
           "$db | sql > $backup_file";

		system($command);
		die();
		
		$conn = mysql_connect($dbhost, $dbuser, $dbpass);
		mysql_select_db($db);
		if(! $conn )
		{
		  die('Could not connect: ' . mysql_error());
		}
		
		$sql = "SELECT * INTO OUTFILE '$backup_file' FROM $table_name";
		echo $sql; die();
		
		$retval = mysql_query( $sql, $conn ) or die(mysql_error());
		if(! $retval )
		{
		  die('Could not take data backup: ' . mysql_error());
		}
		echo "Backup data successfully\n";
		mysql_close($conn);
	}

	public function nominalColumnManagement()
	{
		$this->load->view('template/header');
		$this->load->view('template/nav');
		$data['sidebar'] = $this->load->view('template/sidebar');
		$crud = new grocery_CRUD();
		
		$crud->set_subject('Nominal Management');
		
		$crud->set_theme('datatables');
		$crud->set_table('nominal_column');
		$crud->columns('nc_id', 'nc_name', 'nc_description');
		$crud->display_as('nc_id', 'Nominal Column Id (nc_id)');
		$crud->display_as('nc_name', 'Nominal Column Name');
		$crud->display_as('nc_description', 'Nominal Column Description');
		$crud->unset_texteditor('nc_description', 'full_text');
		
		$crud->field_type('nc_name', 'readonly');
		
		$crud->unset_delete();
		//$crud->unset_edit();
		$crud->unset_add();

		// $crud->callback_column('nc_id',array($this,'_callback_display_nc_code'));

		try
		{
			$output = $crud->render();
		}

		catch(Exception $e)
		{
			show_error($e->getMessage());
		}

		$this->_generate_table_nominalcol_management($output);
	}

	function _generate_table_nominalcol_management($output = null)
	{
		$this->load->view('template/view_displaytable.php', $output);
	}

	public function _callback_display_nc_code($value, $row)
	{
		return "nc_" . $row->nc_id;
	}

	public function layerManagement()
	{
		$this->load->view('template/header');
		$this->load->view('template/nav');
		$data['sidebar'] = $this->load->view('template/sidebar');
		$crud = new grocery_CRUD();
		
		$crud->set_subject('Layer Management');
		
		$crud->set_theme('datatables');

		// old, one to one relation
		// $crud->set_table('tool');
		// $crud->set_relation('rule_id','rule','rule_number');

		$crud->display_as('layer_description', 'Layer Name');
		$crud->set_table('layer');
		try
		{
			$output = $crud->render();
		}

		catch(Exception $e)
		{
			show_error($e->getMessage());
		}

		$this->_generate_table_layer_management($output);
	}

	function _generate_table_layer_management($output = null)
	{
		$this->load->view('layer/viewLayerManagement.php', $output);
	}

	public function importedManagement()
	{
		$this->load->view('template/header');
		$this->load->view('template/nav');
		$data['sidebar'] = $this->load->view('template/sidebar');
		$crud = new grocery_CRUD();
		
		$crud->set_subject('Imported Structure Data View');
		
		$crud->set_theme('datatables');
		$crud->unset_delete();
		$crud->unset_edit();
		$crud->set_table('imported_project');
		try
		{
			$output = $crud->render();
		}

		catch(Exception $e)
		{
			show_error($e->getMessage());
		}

		$this->_generate_table_imported_management($output);
	}

	function _generate_table_imported_management($output = null)
	{
		$this->load->view('imported/viewImportedManagement.php', $output);
	}
	
	public function toolingMaster()
	{
		$this->load->view('template/header');
		$this->load->view('template/nav');
		$data['sidebar'] = $this->load->view('template/sidebar');
		$crud = new grocery_CRUD();
		
		$crud->set_subject('Tooling Master');
		
		$crud->set_theme('datatables');
		$crud->unset_delete();
		$crud->unset_edit();
		$crud->set_table('tooling_master2');
		try
		{
			$output = $crud->render();
		}

		catch(Exception $e)
		{
			show_error($e->getMessage());
		}

		$this->_generate_table_tooling_master($output);
	}

	function _generate_table_tooling_master($output = null)
	{
		$this->load->view('imported/viewToolingMaster.php', $output);
	}

	public function layerToolManagement()
	{
		$this->load->view('template/header');
		$this->load->view('template/nav');
		$data['sidebar'] = $this->load->view('template/sidebar');
		$crud = new grocery_CRUD();
		
		$crud->set_subject('Layer-Tool Management');
		
		$crud->set_theme('datatables');
		$crud->set_table('layer');
		$crud->set_relation_n_n('tool_code', 'layer_tool', 'tool', 'layer_id', 'tool_id', 'tool_code', 'priority');
		$crud->unset_add();
		$crud->unset_delete();
		try
		{
			$output = $crud->render();
		}

		catch(Exception $e)
		{
			show_error($e->getMessage());
		}

		$this->_generate_table_layertool_management($output);
	}

	function _generate_table_layertool_management($output = null)
	{
		$this->load->view('layer_tool/viewLayerToolManagement.php', $output);
	}
	
	public function gradeStaManagement()
	{
		$this->load->view('template/header');
		$this->load->view('template/nav');
		$data['sidebar'] = $this->load->view('template/sidebar');
		$crud = new grocery_CRUD();
		$crud->set_theme('datatables');
		$crud->set_table('category_grade_sta');
		$crud->set_relation('category_id','category','category_name');
		$crud->display_as('category_id','Category ID');
		$crud->display_as('cgs_grade','Grade');
		$crud->display_as('cgs_sta','STA');
		//$crud->unset_add();
		//$crud->unset_delete();
		try
		{
			$output = $crud->render();
		}

		catch(Exception $e)
		{
			show_error($e->getMessage());
		}

		$this->_generate_table_gradesta_management($output);
	}

	function _generate_table_gradesta_management($output = null)
	{
		$this->load->view('material/viewGradeSta.php', $output);
	}
	
	public function carcassWidthThManagement()
	{
		$this->load->view('template/header');
		$this->load->view('template/nav');
		$data['sidebar'] = $this->load->view('template/sidebar');
		$crud = new grocery_CRUD();
		$crud->set_theme('datatables');
		$crud->set_table('carcass_width_th');
		$crud->display_as('cwt_width','Width');
		$crud->display_as('cwt_th','Th');
		//$crud->unset_add();
		//$crud->unset_delete();
		try
		{
			$output = $crud->render();
		}

		catch(Exception $e)
		{
			show_error($e->getMessage());
		}

		$this->_generate_table_carcasswidthth_management($output);
	}

	function _generate_table_carcasswidthth_management($output = null)
	{
		$this->load->view('material/viewCarcassWidthTh.php', $output);
	}
	
	public function carcassInternalDiameterManagement()
	{
		$this->load->view('template/header');
		$this->load->view('template/nav');
		$data['sidebar'] = $this->load->view('template/sidebar');
		$crud = new grocery_CRUD();
		$crud->set_theme('datatables');
		$crud->set_table('carcass_internal_diameter');
		$crud->display_as('cid_name','Carcass Internal Diameter (inches)');
		//$crud->unset_add();
		//$crud->unset_delete();
		try
		{
			$output = $crud->render();
		}

		catch(Exception $e)
		{
			show_error($e->getMessage());
		}

		$this->_generate_table_carcassinternaldiameter_management($output);
	}

	function _generate_table_carcassinternaldiameter_management($output = null)
	{
		$this->load->view('material/viewCarcassInternalDiameter.php', $output);
	}
	
	public function admisPresMngmntView($category_id=1, $cwt_id='', $cid_id='')
	{
		$this->load->model('m_material');
		$this->load->view('template/header');
		$this->load->view('template/nav');
		$data['sidebar'] = $this->load->view('template/sidebar');
		
		$cwt_id = str_replace('%20', ' ', $cwt_id);
		
		$data['category'] = $this->m_material->getCategoryDetail($category_id);
		$data['cwt_id'] = $cwt_id;
		$data['cid_id'] = $cid_id;
		
		$data['ap'] = $this->m_material->getAdmisPressDetail($category_id, $cwt_id, $cid_id);
		
		$this->load->view('material/viewAPDetails', $data);
	}
	
	public function editAdmisPres()
	{
		$this->load->model('m_material');
		$arr = $this->input->post();
		$ap_id = $arr['ap_id'];
		unset($arr['ap_id']);
		unset($arr['category_name']);
		//print_r($arr); die();
		
		$bol_ap = false;
		if ($ap_id == 0) {
			$bol_ap = $this->m_material->addAdmisPress($arr);
		} else {
			$bol_ap = $this->m_material->editAdmisPress($ap_id, $arr);
		}
		if ($bol_ap) {
		} else {
			$this->session->set_flashdata('delete_rule_fail', 'There is problem when editing value!');
		}
		redirect(site_url('admin/admisPresMngmnt'));
	}
	
	public function admisPresMngmnt()
	{
		$this->load->view('template/header');
		$this->load->view('template/nav');
		$data['sidebar'] = $this->load->view('template/sidebar');
		
		$this->load->model('m_material');
		$data['category'] = $this->m_material->getCategory();
		$data['size'] = $this->m_material->getDistinctSize();
		
		$this->load->view('material/viewAdmisPresMngmnt', $data);
	}
	
	public function admissiblePressureManagement()
	{
		$this->load->view('template/header');
		$this->load->view('template/nav');
		$data['sidebar'] = $this->load->view('template/sidebar');
		$crud = new grocery_CRUD();
		$crud->set_theme('datatables');
		$crud->set_table('admissible_pressure');
		$crud->set_relation('category_id','category','category_name');
		$crud->set_relation('cid_id','carcass_internal_diameter','cid_name');
		$crud->set_relation('cwt_id','carcass_width_th','cwt_width');
		$crud->display_as('cid_name','Carcass Internal Diameter (inches)');
		$crud->display_as('cwt_width','Carcass Width');
		$crud->display_as('category_name','Category Name');
		$crud->display_as('cid_id','Carcass Internal Diameter (inches)');
		$crud->display_as('cwt_id','Carcass Width');
		$crud->display_as('category_id','Category Name');
		$crud->display_as('ap_value','Value');
		//$crud->unset_add();
		//$crud->unset_delete();
		try
		{
			$output = $crud->render();
		}

		catch(Exception $e)
		{
			show_error($e->getMessage());
		}

		$this->_generate_table_admissiblepressure_management($output);
	}

	function _generate_table_admissiblepressure_management($output = null)
	{
		$this->load->view('material/viewCarcassInternalDiameter.php', $output);
	}

	/*
	public function layertoolNominalManagement(){
	$this->load->view('template/header');
	$this->load->view('template/nav');
	$data['sidebar']=$this->load->view('template/sidebar');
	$crud = new grocery_CRUD();
	$crud->set_theme('datatables');
	$crud->set_table('layer_tool');
	$crud->columns('layer_id','tool_id','nc_name');
	$crud->fields('layer_id','tool_id','nc_name');
	$crud->set_relation_n_n('nc_name', 'layer_tool_nominal', 'nominal_column', 'layer_tool_id', 'nc_id', 'nc_name','priority');
	$crud->set_relation('tool_id','tool','tool_code');
	$crud->set_relation('layer_id','layer','layer_description');
	$crud->field_type('layer_id', 'readonly');
	$crud->unset_add();
	$crud->unset_delete();
	try{
	$output = $crud->render();
	} catch(Exception $e) {
	show_error($e->getMessage());
	}

	$this->_generate_table_layertoolnominal_management($output);
	}

	function _generate_table_layertoolnominal_management($output = null)
	{
	$this->load->view('tool_nominal/viewToolNominalManagement.php',$output);
	}

	*/
	public function ruleManagement()
	{
		$this->load->view('template/header_datatable');
		$this->load->view('template/nav');
		$data['sidebar'] = $this->load->view('template/sidebar');

		// get the rule data

		$this->load->model('m_rule');
		$rules = array();
		//$rules = $this->m_rule->getAllruleAndsTools();
		$rules = $this->m_rule->getRules3();
		$data['rules'] = $rules;
		/*
		if($this->session->flashdata('delete_rule_sucess'))
		$this->session->keep_flashdata('delete_rule_sucess');
		elseif($this->session->flashdata('delete_rule_fail'))
		$this->session->keep_flashdata('delete_rule_fail');
		*/
		$this->load->view('rule/ruleViewStatic', $data);
		$this->load->view('template/footer_datatable');
	}

	public function ruleManagementOld()
	{
		$this->load->view('template/header');
		$this->load->view('template/nav');
		$data['sidebar'] = $this->load->view('template/sidebar');
		$crud = new grocery_CRUD();
		$crud->set_theme('datatables');

		// set A rule as A table

		$crud->set_table('rule');
		$state = $crud->getState();
		$state_info = $crud->getStateInfo();

		// $crud->fields('rule_number','var1','cond','var2','param_id');
		// $crud->columns('rule_number','var1','cond','var2','param_id');
		// $crud->set_relation_n_n('param_id', 'rule_param', 'param', 'rule_id', 'param_id', '{param_code} (Tool:{param_tool_code} | Number:{param_number})','priority');

		$crud->columns('rule_number', 'var1', 'cond', 'var2');
		/*
		if($state == 'add')
		{
		$crud->set_relation_n_n('param_id', 'rule_param', 'param', 'rule_id', 'param_id', '{param_code} (Tool:{param_tool_code} | Number:{param_number})','priority');
		}
		elseif($state == 'edit')
		{
		$primary_key = $state_info->primary_key;

		// get the tool_id

		$this->load->model('m_tool');
		$result=array();
		$result=$this->m_tool->getToolId($primary_key);
		$tool_id=$result['tool_id'];
		$crud->set_relation_n_n('param_id', 'rule_param', 'param', 'rule_id', 'param_id', '{param_code} (Tool:{param_tool_code} | Number:{param_number})','priority',array('tool_id'=>$tool_id));
		}

		*/
		$crud->set_lang_string('insert_success_message', 'Your data has been successfully stored into the database.<br/>Please wait while you are redirecting to the list page.
		 <script type="text/javascript">
		  window.location = "' . site_url('admin/ruleManagement') . '";
		 </script>
		 <div style="display:none">
		 ');
		try
		{
			$output = $crud->render();
		}

		catch(Exception $e)
		{
			show_error($e->getMessage());
		}

		$this->_generate_table_rule_management($output);
	}

	function _generate_table_rule_management($output = null)
	{
		$this->load->view('rule/ruleView.php', $output);
	}

	public function ruleParameterManagement()
	{
		$this->load->view('template/header');
		$this->load->view('template/nav');
		$data['sidebar'] = $this->load->view('template/sidebar');
		$crud = new grocery_CRUD();
		$crud->set_theme('datatables');
		$crud->set_table('param');
		$crud->set_relation_n_n('rule_number', 'rule_param', 'rule', 'param_id', 'rule_id', 'rule_number', 'priority');
		$crud->fields('tool_id', 'param_tol_min', 'param_tol_plus', 'param_code', 'param_tool_code', 'param_number');
		$crud->columns('rule_number', 'param_number', 'param_tol_min', 'param_tol_plus', 'param_code');
		$crud->set_relation('tool_id', 'tool', 'tool_code');
		$crud->field_type('param_tool_code', 'invisible');
		$crud->callback_after_insert(array(
			$this,
			'update_toolcode_after_insert'
		));
		$crud->callback_after_update(array(
			$this,
			'update_toolcode_after_insert'
		));
		$crud->unset_add();
		$crud->unset_delete();
		try
		{
			$output = $crud->render();
		}

		catch(Exception $e)
		{
			show_error($e->getMessage());
		}

		$this->_generate_table_ruleparameter_management($output);
	}

	function update_toolcode_after_insert($post_array, $primary_key)
	{

		// print_r($primary_key); print_r($post_array);
		// get tool_code

		$this->load->model('m_param');
		$result = array();
		$result = $this->m_param->getToolId($primary_key);
		$tool_code = $result['tool_code'];
		$new_data = array(
			"param_tool_code" => $tool_code
		);
		$this->db->where('param_id', $primary_key);
		$this->db->update('param', $new_data);
		return true;
	}

	function _generate_table_ruleparameter_management($output = null)
	{
		$this->load->view('rule/ruleParameterview.php', $output);
	}

	public function parameterManagement()
	{
		$this->load->view('template/header');
		$this->load->view('template/nav');
		$data['sidebar'] = $this->load->view('template/sidebar');
		$crud = new grocery_CRUD();
		
		$crud->set_subject('Parameter Management');
		
		$crud->set_theme('datatables');
		$crud->set_table('param');
		$crud->fields('param_number', 'tool_id', 'param_code', 'param_tool_code', 'param_tol_min', 'param_tol_plus', 'nt_id', 'param_code_mex');
		$crud->columns('param_number', 'param_code', 'param_tool_code', 'param_tol_min', 'param_tol_plus', 'nt_id', 'param_code_mex');
		$crud->set_relation('tool_id', 'tool', 'tool_code');
		$crud->set_relation('nt_id', 'nominal_type', 'nt_name');
		
		$crud->display_as('nt_id','MEX Code (Optional)');
		$crud->display_as('param_code_mex','Other Code Name');

		// $crud->set_relation('param_tool_code','tool','tool_code');

		$crud->field_type('param_tool_code', 'invisible');
		$crud->callback_before_insert(array(
			$this,
			'parameter_callback_before_insert'
		));
		$crud->callback_before_update(array(
			$this,
			'parameter_callback_before_update'
		));
		$crud->callback_after_insert(array(
			$this,
			'parameter_callback_after_insert'
		));
		$crud->callback_after_update(array(
			$this,
			'parameter_callback_after_update'
		));
		$crud->display_as('param_tol_min', 'Tol-');
		$crud->display_as('param_tol_plus', 'Tol+');
		try
		{
			$output = $crud->render();
		}

		catch(Exception $e)
		{
			show_error($e->getMessage());
		}

		$this->_generate_table_parameter_management($output);
	}

	function parameter_callback_before_insert($post_array)
	{
		$this->load->model('m_rule');
		$tool_id = $post_array['tool_id'];
		$post_array['param_code'] = str_replace(" ", "", $post_array['param_code']);
		$post_array['param_tool_code'] = $this->my_func->getToolCode($tool_id);
		$this->load->library('form_validation');

		// firstly validate, can't add if there is a same param number
		// under the same tool, and the number of the param under
		// each tool must be not more than 10

		if ($this->my_func->validate_add_param($post_array) != false OR $this->my_func->validate_number_of_param($post_array) != false)
		{
			/* Bila add param, check da ada rule bwh tools id
			yg sama dngn param yg di add td x, lau ada, automatik
			rule_param akan trtambah lg.
			*/
			$rule_ids = array();
			$rule_ids = $this->my_func->checkParamToolRule($tool_id);
			if (sizeof($rule_ids) <= 0)
			{
				return $post_array;
			}
			else
			{
				foreach($rule_ids as $r)
				{
					$data_rule_param = array(
						'rule_id' => $r,
						'pio_id' => 1,
						'rp_pre_value' => 0,
						'rp_post_value' => 0
					);
					$rp_ids = array();
					$rp_ids[] = $this->m_rule->addRuleParam($data_rule_param);
				}

				$post_array['rp_ids'] = $rp_ids;
				return $post_array;
			}
		}
		else
		{
			$this->form_validation->set_message('Please take note that the maximum number of param for each tool is 10 and the same param number under same tool is forbiden');
			return false;

			// $this->session->set_flashdata('param_add_fail', 'Please take note that the maximum number of param for each tool is 10 and the same param number under same rool is forbiden');
			// redirect('admin/parameterManagement');

		}
	}

	/*
	function parameter_callback_before_update($post_array,$primary_key)
	{
	$this->load->model('m_rule');
	$param_id=$primary_key;
	$tool_id=$post_array['tool_id'];
	$rule_ids=array();
	$rule_ids=$this->my_func->checkParamToolRule($tool_id);
	foreach($rule_ids as $r)
	{
	$data_rule_param = array(
	"param_id" => $primary_key
	);
	$where=array($r,0);
	$this->m_rule->updateRuleParam($data_rule_param,$where);
	}

	return true;
	}*/
	function parameter_callback_after_insert($post_array, $primary_key)
	{
		$this->load->model('m_rule');
		$rp_ids = $post_array['rp_ids'];
		if (!empty($rp_ids))
		{
			foreach($rp_ids as $r)
			{
				$data_rule_param = array(
					"param_id" => $primary_key
				);
				$where = $r;
				$this->m_rule->updateRuleParam($data_rule_param, $where);
			}
		}

		return true;
	}

	function parameter_callback_before_update($post_array, $primary_key)
	{
		$this->load->model('m_rule');
		$this->load->model('m_param');
		$tool_id = $post_array['tool_id'];
		$post_array['param_code'] = str_replace(" ", "", $post_array['param_code']);
		/*
		if($this->my_func->validate_add_param($post_array)!=false OR $this->my_func->validate_number_of_param($post_array)!=false)
		{
		return false;
		}
		else
		{
		return true;
		}

		*/
		return $post_array;
	}

	function parameter_callback_after_update($post_array, $primary_key)
	{
		$this->load->model('m_rule');
		$this->load->model('m_param');
		$tool_id = $post_array['tool_id'];
		$param_id = $primary_key;
		$tool_id = $post_array['tool_id'];
		$post_array['param_tool_code'] = $this->my_func->getToolCode($tool_id);
		$this->m_param->updateParam($post_array, $param_id);
		/* Bila add param, check da ada rule bwh tools id
		yg sama dngn param yg di add td x, lau ada, automatik
		rule_param akan trtambah lg.
		*/
		$rule_ids = array();
		$rule_ids = $this->my_func->checkParamToolRule($tool_id);
		if (sizeof($rule_ids) <= 0)
		{

			// delete existing param

			$this->m_rule->deleteRuleParamBasedOnParam_id($param_id);
			return true;
		}
		else
		{
			foreach($rule_ids as $r)
			{

				// update the rule_id of existing param

				$data_rule_param = array(
					'rule_id' => $r
				);
				//$this->m_rule->updateRuleParamBasedOnParam_id($data_rule_param, $param_id);
				/*
				$data_rule_param=array(
				'rule_id'=>$r,
				'pio_id'=>1,
				'param_id'=>$primary_key,
				'rp_pre_value'=>0,
				'rp_post_value'=>0
				);
				$rp_ids=array();
				$rp_ids[]=$this->m_rule->addRuleParam($data_rule_param);
				*/
				
				$par = $this->m_param->getParamsDetail($param_id);
				if ($par) {
					$param_code_new = $par[0]->param_code;
					$param_code_old = $post_array['param_code'];
					$str = 'TOOL_'.$tool_id.'_';
					$datax = array(
					   'rp_formula' => $param_code_new.'|'.$param_code_old
					);
					//$this->m_param->updateRuleParamDetail($str, $datax);
				}
			}

			return $post_array;
		}
	}

	function _generate_table_parameter_management($output = null)
	{
		$this->load->view('rule/ruleParameterview.php', $output);
	}
	
	public function rulesDelete($rule_id = 0)
	{
		$this->load->model('m_rule');

		// delete in rule table

		$flag = 0;
		if ($this->m_rule->deleteRulebyId($rule_id) != false)
		{
			$flag = 0;
		}
		else
		{
			$flag = 1;
		}

		// delete in rule_param

		if ($this->m_rule->deleteRuleParamById($rule_id) != false)
		{
			$flag = 0;
		}
		else
		{
			$flag = 1;
		}

		// delete in tool_rule

		if ($this->m_rule->deleteToolRule($rule_id) != false)
		{
			$flag = 0;
		}
		else
		{
			$flag = 1;
		}

		if ($flag != 1)
		{

			return true;
		}
		else
		{
			return false;
		}
	}

	public function rulemanagementDelete($rule_id = 0)
	{
		$this->load->model('m_rule');

		// delete in rule table

		$flag = 0;
		if ($this->m_rule->deleteRulebyId($rule_id) != false)
		{
			$flag = 0;
		}
		else
		{
			$flag = 1;
		}

		// delete in rule_param

		if ($this->m_rule->deleteRuleParamById($rule_id) != false)
		{
			$flag = 0;
		}
		else
		{
			$flag = 1;
		}

		// delete in tool_rule

		if ($this->m_rule->deleteToolRule($rule_id) != false)
		{
			$flag = 0;
		}
		else
		{
			$flag = 1;
		}

		if ($flag != 1)
		{

			// true

			$this->session->set_flashdata('delete_rule_sucess', 'Rule is deleted');
		}
		else
		{
			$this->session->set_flashdata('delete_rule_fail', 'There is problem when deleting rule');
		}

		redirect('admin/ruleManagement');
	}

	public function ruleValueManagement()
	{
		$this->load->view('template/header_datatable');
		$this->load->view('template/nav');
		$data['sidebar'] = $this->load->view('template/sidebar');
		$crud = new grocery_CRUD();
		
		$crud->set_subject('Rule Management');
		
		$crud->set_theme('datatables');
		$crud->set_table('rule_param');
		$crud->set_relation('param_id', 'param', '{param_code} (Tool:{param_tool_code} | Number:{param_number})');
		$crud->set_relation('rule_id', 'rule', 'rule_number');
		$crud->fields('rule_id', 'param_id', 'pio_id', 'rp_formula', 'rp_pre_value', 'rp_post_value');
		$crud->columns('rule_id', 'param_id', 'pio_id', 'rp_formula', 'rp_pre_value', 'rp_post_value');
		$crud->set_relation('pio_id', 'param_input_options', 'pio_code');
		$crud->field_type('rule_id', 'readonly');
		$crud->field_type('param_id', 'readonly');
		$crud->callback_field('rp_pre_value', array(
			$this,
			'callback_pre_value'
		));

		// $crud->unset_edit_fields('priority');

		/*
		$state = $crud->getState();
		$state_info = $crud->getStateInfo();
		if($state == 'edit')
		{
		$primary_key = $state_info->primary_key;
		$pio_id=$this->my_func->getPioID($primary_key);
		if($pio_id!=3)
		{
		$crud->unset_edit_fields(array('rp_formula'));
		$crud->field_type('rp_formula','invisible');
		}

		// Do your awesome coding here.

		}

		*/
		$crud->field_type('rp_formula', 'hidden');
		$crud->field_type('rp_post_value', 'hidden', null);
		$crud->callback_after_insert(array(
			$this,
			'callback_after_insert_or_update_rulevalue'
		));
		$crud->callback_after_update(array(
			$this,
			'callback_after_insert_or_update_rulevalue'
		));
		$crud->callback_before_update(array(
			$this,
			'callback_before_update_rulevalue'
		));
		$crud->unset_add();
		$crud->unset_delete();
		$crud->set_lang_string('insert_success_message', 'Your data has been successfully stored into the database.<br/>Please wait while you are redirecting to the list page.
		 <script type="text/javascript">
		  window.location = "' . site_url('admin/ruleManagement') . '";
		 </script>
		 <div style="display:none">
		 ');
		$crud->unset_list();
		try
		{
			$output = $crud->render();
		}

		catch(Exception $e)
		{
			if ($e->getCode() == 14) //The 14 is the code of the "You don't have permissions" error on grocery CRUD.
			{
				redirect('admin/ruleManagement');
			}
			else
			{
				show_error($e->getMessage());
			}
		}

		$this->_generate_table_rulevalue_management($output);
	}

	function _generate_table_rulevalue_management($output = null)
	{
		$this->load->view('rule/ruleValueManagementView.php', $output);
	}

	public function viewAddRuleValueManagement()
	{
		$this->load->view('template/header');
		$this->load->view('template/nav');
		$data['sidebar'] = $this->load->view('template/sidebar');

		// get all tool

		$tools = array();
		$this->load->model('m_tool');
		$tools = $this->m_tool->getAlltools();
		$data['tools'] = $tools;
		$this->load->view('rule/ruleAddView.php', $data);
	}
	
	public function viewEditRuleValueManagement($rule_id=0) 
	{
		$this->load->view('template/header');
		$this->load->view('template/nav');
		$data['sidebar'] = $this->load->view('template/sidebar');

		// get all tool
		$tools = array();
		$this->load->model('m_tool');
		$tools = $this->m_tool->getAlltools();
		$data['tools'] = $tools;
		
		// get all rules
		$this->load->model('m_rule');
		$rules = $this->m_rule->getRules($rule_id);
		$data['rules'] = $rules;
		$rule_number1 = $rules[0]->rule_number;
		$rule_number2 = explode('_', $rule_number1);
		$data['rule_number'] = $rule_number2[0];
		$data['rule_number2'] = $rule_number2[1];
		//print_r($data); die();
		
		$this->load->view('rule/ruleEditView.php', $data);
	}
	
	public function editRuleProcess()
	{
		$this->load->model('m_rule');
		$arrPost = $this->input->post();
		$rule_number_old = $arrPost['rule_number'];
		$rule_number_new = $arrPost['tool_code'].'_'.$arrPost['rule_number3'];
		//print_r($arrPost); die();
		if ($rule_number_old == $rule_number_new) {
			$rule_id = $arrPost['rule_id'];
			$data = array(
				'var1' => $this->input->post('var1'),
				'var2' => $this->input->post('var2')
			);
			$this->m_rule->editRule($rule_id, $data);
			redirect('admin/ruleManagement');
		} else {
			$bol_rulesDelete = $this->rulesDelete($arrPost['rule_id']);
			if ($bol_rulesDelete) {
				$this->addRuleProcess();
			} else {
				$this->session->set_flashdata('rule_add_fail', 'Cannot edit rule!');
				redirect('admin/ruleManagement');
			}
		}
	}
	
	public function getRuleNumberLatest($tool_code)
	{
		$rules = $this->m_rule->getRules2($tool_code);
		if ($rules) {
			$num = array();
			foreach ($rules as $ru) {
				$pecah = explode('_', $ru->rule_number);
				$num[] = $pecah[1];
			}
			return max($num)+1;
		} else {
			return 1;
		}
	}

	public function addRuleProcess($data = null)
	{
		$this->load->model('m_rule');
		$this->load->model('m_tool');
		$this->load->model('m_param');
		$tool_code_i = $this->input->post('tool_code');
		$tool_code = str_replace(' ', '', strtolower($tool_code_i));

		// rule_number=tool_code._.rule_number

		//$rule_number = $this->input->post('rule_number');
		$rule_number = $this->getRuleNumberLatest($tool_code);
		$real_rule_number = $tool_code . '_' . $rule_number;
		$data = array(
			'rule_number' => $real_rule_number,
			'var1' => $this->input->post('var1'),
			'cond' => '',
			'var2' => $this->input->post('var2')
		);
		$rule_id = $this->m_rule->addRule($data);
		$flag = 0;
		if ($rule_id != 0)
		{
			$tool_id = $this->m_tool->getToolIdFromToolCode($tool_code_i);
			$data_tool_rule = array(
				'rule_id' => $rule_id,
				'tool_id' => $tool_id
			);
			/*
			bila add rule, maka add table rule_param dan
			check rule yang tool_id dia sama dengan tool_id param
			(check dari table param, dan table rule->tool_rule).
			map kan table rule_param dengan param yang ada tool_rule.tool_id
			*/
			if ($tool_rule_id = $this->m_rule->addToolRule($data_tool_rule))
			{

				// cari param yang tool_id sama dengan rule yang
				// baru dimasukan

				$params = array();
				$params = $this->m_param->getParamBasedOnToolId($tool_id);
				if (empty($params))
				{

					// cannot add rule_param, because there is no param yet

					$this->session->set_flashdata('rule_add_fail', 'Please create param first to add rule');
					redirect('admin/ruleManagement');
				}

				foreach($params as $key => $value)
				{
					$data_rule_param = array(
						'rule_id' => $rule_id,
						'param_id' => $value->param_id,
						'pio_id' => 1,
						'rp_pre_value' => 0,
						'rp_post_value' => 0
					);
					$rule_param_id = $this->m_rule->addRuleParam($data_rule_param);
				}
			}
		}

		$this->session->set_flashdata('rule_add_sucess', 'Rule is added successfully');
		redirect('admin/ruleManagement');
	}

	public

	function calculate_string($string)
	{
		/*$string = trim($string);
		$string = preg_replace('/[^0-9\+\-\*\/\(\)[46] ]/i', '', $string);
		$string = ltrim($string, '0');
		$compute = create_function('', 'return (' . $string . ');');
		if ($compute != false) return 0 + $compute();
		else return false;*/
		return 0;
	}

	function callback_after_insert_or_update_rulevalue($post_array, $primary_key = null)
	{

		// $this->my_func->reCalculateFormula();

		$this->load->model('m_tool');
		$this->load->model('m_param');
		if ($post_array['pio_id'] == '1') //constant
		{
			$post_array['rp_post_value'] = $post_array['rp_pre_value'];
			$post_array['rp_formula'] = $post_array['rp_pre_value'];
			$this->db->where('rp_id', $primary_key);
			$this->db->update('rule_param', $post_array);
			//$this->my_func->reCalculateFormula();

			// $this->session->set_flashdata('rule_add_sucess', 'Rule is updated successfully');
			// redirect('admin/ruleManagement');

		}
		elseif ($post_array['pio_id'] == '2') //nominal_column
		{
			$temp = array();
			$temp = explode("_", $post_array['rp_pre_value']);
			$nominal_column_id = $temp[1];

			// get the column_nominal value from the nominal_column_id

			$nc_nameArr = $this->m_tool->getNominalColumnName($nominal_column_id);
			$nc_name = $nc_nameArr[0]->nc_name;
			$nc_valueArr = $this->m_tool->getNominalColumnValueFromImportedProject($nc_name);
			$nc_value = $nc_valueArr[0]->$nc_name;

			// after get the nc_value then update

			$post_array['rp_post_value'] = $nc_value;
			$post_array['rp_formula'] = $nc_name;
			$this->db->where('rp_id', $primary_key);
			$this->db->update('rule_param', $post_array);
			//$this->my_func->reCalculateFormula();
		}
		elseif ($post_array['pio_id'] == '3') //formula
		{
			$formulastring = $post_array['rp_post_value'];
			$post_array['rp_pre_value'] = $formulastring;
			unset($post_array['example_length']);
			unset($post_array['example2_length']);
			unset($post_array['example3_length']);
			$hasil_value = $this->calculate_string($formulastring);
			$post_array['rp_post_value'] = $hasil_value;
			/*$data=array(
			'rp_pre_value'=>$post_array['rp_pre_value'],
			'rp_post_value'=>$hasil_value
			);*/
			$this->db->where('rp_id', $primary_key);
			$this->db->update('rule_param', $post_array);
			//$this->my_func->reCalculateFormula();
			$this->session->set_flashdata('rule_add_sucess', 'Rule is updated successfully');
			redirect('admin/ruleManagement');

			// get the  param_n value
			// dont confuse, param_id is the existing param_id, the param_number
			// is the param_id that the admin wants to refer to

			/*
			$temp=array();
			$rule_id=$post_array['rule_id'];
			$formulastring="";

			// firstly get the value of param_number

			$param_collection=array('param_1',
			'param_2',
			'param_3',
			'param_4',
			'param_5',
			'param_6',
			'param_7',
			'param_8',
			'param_9',
			'param_10',
			);
			$nc_collection=array();
			$nc_collection=$this->m_param->getAllNcId();

			// search the param_number inside the formula string

			foreach($param_collection as $param){

			// search the string
			// this is formula translation for parameter

			if(strstr($post_array['rp_pre_value'],$param)!=false)
			{

			// get the value for the param

			$param_values=array();
			$param_value=0;

			// get the param_id

			$temp_param=array();
			$temp_param=explode('_',$param);
			$param_id=$temp_param[1];
			$param_values=$this->m_param->getParamValue($rule_id,$param_id);
			foreach($param_values as $r=>$v)
			{
			$param_value=$v->rp_post_value;
			}

			// replace the param

			$formulastring.=str_replace($param,$param_value,$post_array['rp_pre_value']);
			}
			}

			// search the param_number inside the formula string

			foreach($nc_collection as $ncs){
			$ncs='nc_'.$ncs->nc_id;

			// search the string

			if(strstr($post_array['rp_pre_value'],$ncs)!=false)
			{
			$temp=array();
			$temp = explode("_", $ncs);
			$nominal_column_id=$temp[1];

			// get the column_nominal value from the nominal_column_id

			$nc_nameArr=$this->m_tool->getNominalColumnName($nominal_column_id);
			$nc_name=$nc_nameArr[0]->nc_name;
			$nc_valueArr=$this->m_tool->getNominalColumnValueFromImportedProject($nc_name);
			$nc_value=$nc_valueArr[0]->$nc_name;

			// replace the param

			$formulastring.=str_replace($ncs,$nc_value,$post_array['rp_pre_value']);
			}
			}

			$hasil_value=$this->calculate_string($formulastring);
			$post_array['rp_post_value']=$hasil_value;
			$this->db->where('rp_id', $primary_key);
			$this->db->update('rule_param', $post_array);
			*/
		}
		elseif ($post_array['pio_id'] == '4')
		{ //text
			$post_array['rp_post_value'] = $post_array['rp_pre_value'];
			$post_array['rp_formula'] = $post_array['rp_pre_value'];
			$this->db->where('rp_id', $primary_key);
			$this->db->update('rule_param', $post_array);
			//$this->my_func->reCalculateFormula();
		}

		return $post_array;
	}

	function callback_before_update_rulevalue($post_array, $primary_key = null)
	{
		$this->load->model('m_tool');
		$this->load->model('m_param');
		if ($post_array['pio_id'] == '1') //constant
		{
			$post_array['rp_post_value'] = $post_array['rp_pre_value'];
			$post_array['rp_formula'] = null;
			$this->db->where('rp_id', $primary_key);
			$this->db->update('rule_param', $post_array);

			// $this->session->set_flashdata('rule_add_sucess', 'Rule is updated successfully');
			// redirect('admin/ruleManagement');

		}
		elseif ($post_array['pio_id'] == '2') //nominal_column
		{
			$temp = array();
			$temp = explode("_", $post_array['rp_pre_value']);
			$nominal_column_id = $temp[1];

			// get the column_nominal value from the nominal_column_id

			$nc_nameArr = $this->m_tool->getNominalColumnName($nominal_column_id);
			$nc_name = $nc_nameArr[0]->nc_name;
			$nc_valueArr = $this->m_tool->getNominalColumnValueFromImportedProject($nc_name);
			$nc_value = $nc_valueArr[0]->$nc_name;

			// after get the nc_value then update

			$post_array['rp_post_value'] = $nc_value;
			$this->db->where('rp_id', $primary_key);
			$this->db->update('rule_param', $post_array);
		}
		elseif ($post_array['pio_id'] == '3') //formula
		{
			$formulastring = $post_array['rp_post_value'];
			$post_array['rp_pre_value'] = $formulastring;
			unset($post_array['example_length']);
			unset($post_array['example2_length']);
			unset($post_array['example3_length']);
			$hasil_value = $this->calculate_string($formulastring);
			if ($hasil_value == false AND $hasil_value != 0)
			{
				$this->session->set_flashdata('rule_add_fail', 'Pay attention to the formula');
				redirect('admin/ruleManagement');
			}

			$post_array['rp_post_value'] = $hasil_value;
			/*$data=array(
			'rp_pre_value'=>$post_array['rp_pre_value'],
			'rp_post_value'=>$hasil_value
			);*/
			$this->db->where('rp_id', $primary_key);
			$this->db->update('rule_param', $post_array);
			$this->session->set_flashdata('rule_add_sucess', 'Rule is updated successfully');
			redirect('admin/ruleManagement');
		}
		elseif ($post_array['pio_id'] == '4')
		{ //text
			$post_array['rp_post_value'] = $post_array['rp_pre_value'];
			$this->db->where('rp_id', $primary_key);
			$this->db->update('rule_param', $post_array);
		}

		return $post_array;
	}

	function viewAjaxRule($pio_id = 0)
	{
		$data['primary_key'] = $pio_id;
		$this->load->view('rule/ruleValueAjaxView', $data, true);
	}

	function callback_pre_value($value = null, $primary_key = null)
	{

		// $output .= "<input type='text' name='test1' value='test' id='test1'/>";
		// Or with a view

		$data['primary_key'] = $primary_key;
		$output = $this->load->view('rule/ruleValueAjaxView', $data, true);

		// $output="<input type='text'/> ";

		return $output;
	}

	public

	function ajaxGetRuleValue($pio_id = 0, $rp_id = 0)
	{
		$this->load->model('m_tool');
		$this->load->model('m_rule');
		$this->load->model('m_param');
		if ($pio_id == 1) //constant
		{

			// check if existing constant value

			if ($rp_id != 0)
			{
				$result = $this->m_rule->getNcValueFromRuleValueMg($rp_id);
				echo "<input type='text' id='field-rp_pre_value' value='" . $result[0]->rp_formula . "' name='rp_pre_value' />";
					/*if($rp_id==3)
					{
					echo "<input type='text' id='field-rp_formula' value='".$v->rp_formula."' name='rp_formula' />";
					}*/
			}
			else
			{
				echo "<input type='text' id='field-rp_pre_value' name='rp_pre_value' />";
			}
		}
		elseif ($pio_id == 2) //nominal column
		{
			$result = array();
			$hasil = "";
			$result = $this->m_tool->getWholeNominalColumn();

			// print_r($result);

			$hasil = "<select id='field-rp_pre_value' name='rp_pre_value'>";
			
			$rules_paramx = $this->m_param->getRuleParams($rp_id);
			$rp_formulax = (!empty($rules_paramx)) ? ($rules_paramx[0]->rp_formula) : ("-");
			
			foreach($result as $r => $v)
			{
				$hasil.= "<option value='nc_" . $v->nc_id . "'";
				if ($rp_formulax == $v->nc_name) 
				{
					$hasil.=" selected";
				}
				$hasil.=">" . $v->nc_name . "</option>";
			}

			$hasil.= "</select>";
			echo $hasil;
		}
		elseif ($pio_id == 3) //formula
		{

			// get the param_id from rp_id

			$result = $this->m_rule->getRuleIdFromRuleParam($rp_id);
			$hasil = $this->m_rule->getPreValueForFormula($rp_id);
			$nominal_columns = $this->m_tool->getWholeNominalColumn();
			$layer_name = strtoupper($this->m_rule->getLayerNameFromRpId($rp_id));
			$formula = $this->m_rule->getFormula($rp_id);

			// $nc_valueArr=$this->m_tool->getNominalColumnValueFromImportedProject($nc_name);

			$rule_ids = $this->m_rule->getRuleIdFromRuleParam($rp_id);
			foreach($rule_ids as $r)
			{
				$rule_id = $r->rule_id;
			}

			$params = $this->m_rule->getRulesAndParams($rule_id);
			$data['result'] = $result;
			$data['hasil'] = $hasil;
			$data['nominal_columns'] = $nominal_columns;
			$data['params'] = $params;
			$data['layer_name'] = $layer_name;
			$data['formula'] = $formula;

			// here list all the required formula paramters

			$output = $this->load->view('formula/viewConstructFormula', $data, true);
			echo $output;
		}
		elseif ($pio_id == 4)
		{ //text
			if ($rp_id != 0)
			{
				$result = $this->m_rule->getNcValueFromRuleValueMg($rp_id);
				foreach($result as $r => $v)
				{
					echo "<input type='text' id='field-rp_pre_value' value='" . $v->rp_pre_value . "' name='rp_pre_value' />";
				}
			}
			else
			{
				echo "<input type='text' id='field-rp_pre_value' name='rp_pre_value' />";
			}
		}
	}
	
	public function test1()
	{
		$string = ltrim('08 * 03', '0');
		$formula = create_function('', 'return ('.$string.');');
		echo 0 + $formula();
	}

	public function ajaxGetNominalColumnValue($nc_name = '', $layer_name = '')
	{
		$this->load->model('m_layer');
		$value = $this->m_layer->getNominalFromLayerName($nc_name, urldecode($layer_name));
		if (!empty($value))
		{
			foreach($value as $v)
			{
				echo $v->$nc_name;
			}
		}
	}

	// show tools which will be shown their rules

	public function showRulesFromTool()
	{
		$this->load->view('template/header');
		$this->load->view('template/nav');
		$data['sidebar'] = $this->load->view('template/sidebar');
		$this->load->model('m_tool');
		$data['rules'] = $this->m_tool->getAlltools();
		$this->load->view('rule/toolForRuleView', $data);
	}

	public function ajaxDisplayTool($val = '')
	{
		$value = array();
		$value = explode('seperator', $val);
		$layer_name = str_replace('%20', ' ', $value[0]);
		$selectedArray = array(
			'layer_name' => $layer_name,
			'diaintercouche' => $value[1]
		);
		$this->session->set_userdata($selectedArray);

		// redirect('admin/DisplayTool');

	}

	public function ajaxDisplayToolSheet($tool_id = '')
	{
		$this->session->set_userdata('selected_tool_id', $tool_id);
	}

	public function ajaxDisplayToolSheetDirect($transaction_id = '')
	{
		$this->load->model('m_project');
		$projectdetails = array();
		$projects = array();
		$projectdetails = $this->m_project->getProjectByTransId($transaction_id);
		foreach($projectdetails as $row)
		{

			// get the layer name and diaintercouche

			$layer_name = strtoupper($this->my_func->getlayerName($row->selected_layer_id));
			$layer_id = $row->selected_layer_id;
			$tool_id = $row->selected_tool_id;
			$projectdetails = array(
				'layer_name' => $layer_name,
				'diaintercouche' => $row->idnom,
				'layer_id' => $row->layer_id
			);
			$this->session->set_userdata($projectdetails);
			$data = array(
				'project_name' => $row->project_name,
				'selected_tool_id' => $row->selected_tool_id,
				'selected_layer_id' => $row->selected_layer_id,
				'idnom' => $row->idnom,
				'structure_number' => $row->structure_number,
				'project_number' => $row->project_number,
				'section_number' => $row->section_number,
				'plf_length' => $row->plf_length,
				'transaction_id' => time() ,
				'overlength' => $row->overlength,
			);
			$this->session->set_userdata($data);
		}

		// $flag=$this->m_project->Add('project',$data);

		$tools = array();
		$tools = $this->m_tool->getToolFromLayerId($layer_id);
		$data['tools'] = $tools;

		// save to session

		$this->session->set_userdata($tools);
		$this->session->set_userdata('selected_tool_id', $tool_id);
	}

	public function displayToolSheet()
	{
		$this->load->model("m_rule");
		$this->load->model("m_tool");
		$this->load->model("m_project");
		$this->load->view('template/header_datatable');
		$this->load->view('template/nav');
		$data['sidebar'] = $this->load->view('template/sidebar');
		$data = array(
			'layer_name' => $this->session->userdata('layer_name') ,
			'layer_id' => $this->session->userdata('layer_id') ,
			'idnom' => $this->session->userdata('diaintercouche') ,
			'selected_tool_id' => $this->session->userdata('selected_tool_id')
		);

		// print_r($this->session->all_userdata());

		/*
		if(empty($layer_id) OR empty($selected_tool_id))
		{
		$this->session->set_flashdata('no_layer_or_tool', 'There is no layer or tool exist');
		redirect('admin/structureNumber');
		}

		*/

		// get the tool image file

		$data['file_url'] = $this->m_tool->getToolImage($data['selected_tool_id']);
		$rule_id = $this->my_func->checkRule($data);

		// in checkRule the idnom is updated based on the conversion

		$idnom = $this->session->userdata('diaintercouche');
		$data_update_project = array(
			'selected_layer_id' => $data['layer_id'],
			'selected_tool_id' => $data['selected_tool_id'],
			'idnom' => $idnom
		);
		$transaction_id = $this->session->userdata('transaction_id');
		$this->m_project->update('project', $data_update_project, 'transaction_id', $transaction_id);
		$rule_number = $this->my_func->getRuleNumber($rule_id);
		$rules = array();

		// print_r($rule_id);
		// print_r(' - ');
		// print_r($rule_number);
		// here the rule_id = selected_rule_id

		if ($rule_id != false)
		{
			$rules = $this->m_rule->getRulesAndParams2($rule_id);
			$data['rules'] = $rules;
			$data['rule_number'] = $rule_number;
		}
		else
		{
			$data['rules'] = NULL;
		}

		$nominal_types = $this->m_tool->getNominalTypes($data_update_project['selected_tool_id']);
		if (empty($nominal_types))
		{
			$this->session->set_flashdata('error', 'Please choose the right data (No Nominal Type found on this tool');
			redirect('admin/showError');
		}

		/*$nominal_type_results = $this->m_tool->getToolingMaster($nominal_types);
		if (!empty($nominal_type_results))
		{
			$data['nominal_type_results'] = $nominal_type_results;
		}
		else
		{
			$data['nominal_type_results'] = null;
		}*/
		
		//print_r($data['nominal_type_results']); die();

		$structure_number = $this->session->userdata('structure_number');
		$transaction_number = $this->session->userdata('transaction_number');
		$data['projects'] = $this->m_project->getProjectByTransId($transaction_number);
		$this->load->view('tool/viewToolSheet', $data);
		$this->load->view('template/footer_datatable');
	}
	
	public function DisplayPressureSheath()
	{
		$this->load->model("m_rule");
		$this->load->model("m_tool");
		$this->load->model("m_project");
		
		$this->load->view('template/header_datatable');
		$this->load->view('template/nav');
		$data['sidebar'] = $this->load->view('template/sidebar');
		
		$sess = $this->session->all_userdata();
		$structure_number = $sess['structure_number'];
		$layer_name = $sess['layer_name'];
		
		$data['file_url'] = $this->m_tool->getToolImage2('PIN');
		$transaction_number = $this->session->userdata('transaction_number');
		$data['projects'] = $this->m_project->getProjectByTransId($transaction_number);
		
		$tool_code = 'PIN';
		$rules = $this->m_rule->getRulesAndParams3($tool_code);
		if(!empty($rules))
		{
			// minimum
			$r1 = $rules[0];
			$minimum = $this->my_func->getFormulaValue($structure_number, $layer_name, $r1->pio_id, $r1->rp_formula, $r1->param_code, $r1->rule_id, $sess['diaintercouche']);
			// maximum
			$r2 = $rules[1];
			$maximum = $this->my_func->getFormulaValue($structure_number, $layer_name, $r2->pio_id, $r2->rp_formula, $r2->param_code, $r2->rule_id, $sess['diaintercouche']);
		}
		$data['nominal_type_results'] = $this->m_tool->getToolingMaster3('PIN', 'PIN', $minimum, $maximum);
		
		$tools = $this->m_tool->getToolFromLayerName($sess['layer_name']);
		if (!empty($tools)) {
			foreach ($tools as $to) {
				if ($to->tool_code != $tool_code) {
					$data['file_url_others'][] = $this->m_tool->getToolImage1($to->tool_id);
				}
			}
		}
		
		$this->load->view('tool/viewPS', $data);
		$this->load->view('template/footer_datatable');
	}
	
	function __readExcelToolingMasterDB($create=1, $insert=1)
	{
		$file = "D:\\OTHERS\\GoogleDrive\\Tuffah Informatics\\AsiaFlex - Method's Application Software (MARS)\\new\\Tooling Master DB\\tooling_db_10012015.csv";
		$table_name = "tooling_master2";
	
		if ($create == 1) {	
			$myfile = fopen($file, "r") or die("Unable to open file!");
			//separate columns
			$line = fgets($myfile);
			$pecah = explode(',', $line);
			$cols = array();
			foreach ($pecah as $p) {
				$p1 = str_replace(' ', '_', $p);
				$p1 = str_replace('-', '_', $p1);
				$p1 = str_replace('/', '_', $p1);
				$p1 = str_replace('
', '', $p1);
				//echo "|".$p1."|<br />";
				$cols[] = $p1;
			}
			$sql = "CREATE TABLE IF NOT EXISTS `".$table_name."` (`tm_id` int(11) NOT NULL AUTO_INCREMENT";
			foreach ($cols as $c) {
				$sql .= ", 
				`".$c."` varchar(200) NULL";
			}
			$sql .= ", 
			PRIMARY KEY (`tm_id`)) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;";
			
			//die();
			
			mysql_query($sql) or die(mysql_error());
			fclose($myfile);
			echo "Table created ...";
		}
		
		if ($insert == 1) {
			$myfile = fopen($file, "r") or die("Unable to open file!");
			// Output one line until end-of-file
			$i = 0;
			while(!feof($myfile)) {
				$line = fgets($myfile);
				if ($i > 0) {
					
					//insert data into new table
					//separate columns
					//$line = fgets($myfile);
					$pecah = explode(',', $line);
					$sql = "INSERT INTO ".$table_name." VALUES(".$i;
					foreach ($pecah as $p) {
						$p1 = str_replace(',', '', $p);
						$p1 = str_replace('\'', '', $p1);
						$p1 = str_replace('"', '', $p1);
						$sql .= ", '".$p1."'";
					}
					$sql .= ")";
					//echo $i . "|" . $line . "<br />";
					mysql_query($sql) or die(mysql_error());
				}
				$i++;
			}
			fclose($myfile);
			echo "Data inserted ...";
		}
	}

	public function showError()
	{
		$this->load->view('template/error');
	}

	public function DisplayTool()
	{
		$this->load->model("m_layer");
		$this->load->model("m_tool");
		$this->load->model('m_project');
		$this->load->model('m_imported_project');
		$this->load->model('m_material');
		$this->load->view('template/header_datatable');
		$this->load->view('template/nav');
		$data['sidebar'] = $this->load->view('template/sidebar');
		$layer_name = $this->session->userdata('layer_name');
		$diaintercouche = $this->session->userdata('diaintercouche');
		$structure_number = $this->session->userdata('structure_number');
		$transaction_number = $this->session->userdata('transaction_number');
		$data['projects'] = $this->m_project->getProjectByTransId($transaction_number);

		// get layer_id from layer_name

		$layer_id = $this->m_layer->getLayerIdFromLayerName($layer_name);
		$data['layer_detail'] = $this->m_layer->getLayersDetail($layer_id);

		// save to session

		$this->session->set_userdata('layer_id', $layer_id);
		$this->session->set_userdata('layer_name', $layer_name);
		$data['layer_name'] = $layer_name;
		$data['material'] = $this->m_material->get_sheet($structure_number, $layer_name);
		$data['tdd'] = $this->m_imported_project->getAll($structure_number, $layer_name);
		$tools = array();
		$tools = $this->m_tool->getToolFromLayerId($layer_id);
		//echo $layer_id; die();
		$data['tools'] = $tools;

		// save to session

		$this->session->set_userdata($tools);

		// $data['layer_name']=$layer_name;
		// $data['diaintercouche']=$diaintercouche;
		// print_r($this->session->all_userdata());

		$dis = $this->m_imported_project->getLayers($structure_number);
		$data['unique_layers'] = "";
		if ($dis)
		{
			foreach($dis as $d)
			{
				$data['unique_layers'].= $d->layer_code_unique . ' ';
			}
		}
		
		$data['cumMass'] = $this->m_imported_project->getCumMass($structure_number);

		$this->load->view('tool/toolFromLayerView', $data);
		$this->load->view('template/footer_datatable');
		/*remove previous session
		$this->session->unset_userdata('layer_name');
		$this->session->unset_userdata('diaintercouche');
		*/
	}
	
	public function exportSheet()
	{
		$this->load->model("m_layer");
		$this->load->model("m_tool");
		$this->load->model('m_project');
		$this->load->model('m_imported_project');
		$this->load->model('m_material');
		
		$layer_name = $this->session->userdata('layer_name');
		$diaintercouche = $this->session->userdata('diaintercouche');
		$structure_number = $this->session->userdata('structure_number');
		$transaction_number = $this->session->userdata('transaction_number');
		$data['projects'] = $this->m_project->getProjectByTransId($transaction_number);

		// get layer_id from layer_name

		$layer_id = $this->m_layer->getLayerIdFromLayerName($layer_name);

		// save to session

		$this->session->set_userdata('layer_id', $layer_id);
		$this->session->set_userdata('layer_name', $layer_name);
		$data['layer_name'] = $layer_name;
		$data['material'] = $this->m_material->get_sheet($structure_number, $layer_name);
		$data['tdd'] = $this->m_imported_project->getAll($structure_number, $layer_name);
		$tools = array();
		$tools = $this->m_tool->getToolFromLayerId($layer_id);
		$data['tools'] = $tools;

		// save to session

		$this->session->set_userdata($tools);

		// $data['layer_name']=$layer_name;
		// $data['diaintercouche']=$diaintercouche;
		// print_r($this->session->all_userdata());

		$dis = $this->m_imported_project->getLayers($structure_number);
		$data['unique_layers'] = "";
		if ($dis)
		{
			foreach($dis as $d)
			{
				$data['unique_layers'].= $this->my_func->getFirstWord($d->layer_name_unique) . ' ';
			}
		}
		
		$data['cumMass'] = $this->m_imported_project->getCumMass($structure_number);
		
		$tarikh = date('YmdHis');
		$filename ="SetupSheet_".$tarikh.".xls";
		
		$stat = $this->input->post('stat');
		
		if ($stat == 1) {
			$filename = "MachineSetupSheet_".$tarikh.".xls";
		} else if ($stat == 2) {
			$filename = "RiggingSetupSheet_".$tarikh.".xls";
		} else if ($stat == 3) {
			$filename = "ToolingSetupSheet_".$tarikh.".xls";
		}
		
		header('Content-type: application/ms-excel');
		header('Content-Disposition: attachment; filename='.$filename);
		
		if ($stat == 1) {
			
			$data['rev'] = $this->input->post('rev');
			$data['checked_by'] = $this->input->post('checked_by');
			$data['job_nrs'] = $this->input->post('job_nrs');
			$data['plf_length'] = $this->input->post('plf_length');
			$data['overlength'] = $this->input->post('overlength');
			echo $this->load->view('tool/viewExportMachineSetupSheet', $data, true);
			
		} else if ($stat == 2) {
			
			$data['rev'] = $this->input->post('rev');
			$data['checked_by'] = $this->input->post('checked_by');
			$data['job_nrs'] = $this->input->post('job_nrs');
			$data['cable_ref'] = $this->input->post('cable_ref');
			$data['shackle_ref'] = $this->input->post('shackle_ref');
			echo $this->load->view('tool/viewExportRiggingSheet', $data, true);
			
		} else if ($stat == 3) {
			
			$data['rev'] = $this->input->post('rev');
			$data['checked_by'] = $this->input->post('checked_by');
			$data['job_nrs'] = $this->input->post('job_nrs');
			$data['cable_ref'] = $this->input->post('cable_ref');
			$data['shackle_ref'] = $this->input->post('shackle_ref');
			
			$drawingList = $this->input->post('drawingList');
			$icount = 0;
			foreach ($drawingList as $dl) {
				$pecah = explode('|', $dl);
				$data['drawingList'][$icount]['toolingName'] = $pecah[0];
				$data['drawingList'][$icount]['drawingNo'] = $pecah[1];
				$data['drawingList'][$icount]['location'] = $pecah[2];
				$data['drawingList'][$icount]['qty'] = $pecah[3];
				$icount += 1;
			}
			
			echo $this->load->view('tool/viewExportToolingSheet', $data, true);
			
		}
	}

	// layer_tool management

	public function toolRuleManagement()
	{
		$this->load->view('template/header');
		$this->load->view('template/nav');
		$data['sidebar'] = $this->load->view('template/sidebar');
		$crud = new grocery_CRUD();
		$crud->set_theme('datatables');
		$crud->set_table('layer_tool');
		$crud->set_relation('layer_id', 'layer', 'layer_code');
		$crud->set_relation('tool_id', 'tool', 'tool_code');
		$crud->set_relation('nc_id', 'nominal_column', 'nc_name');
		$crud->display_as('layer_id', 'Layer Code');
		$crud->display_as('tool_id', 'Tool Code');
		$crud->display_as('nc_id', 'Nominal Column');
		$crud->display_as('nc_value', 'Nominal Column Value');

		// $crud->set_relation_n_n('Tools', 'layer_tool', 'tool', 'layer_id', 'tool_id', 'tool_code','layer_tool_id');

		try
		{
			$output = $crud->render();
		}

		catch(Exception $e)
		{
			show_error($e->getMessage());
		}

		$this->_generate_table_toolrule_management($output);
	}

	function _generate_table_toolrule_management($output = null)
	{
		$this->load->view('layer_tool/viewToolRuleManagement.php', $output);
	}
	
	public function isValidColumn($database, $table, $column)
	{
		$sql = sprintf("SELECT * 
				FROM information_schema.COLUMNS 
				WHERE 
					TABLE_SCHEMA = '%s' 
				AND TABLE_NAME = '%s' 
				AND COLUMN_NAME = '%s'",
				$database, $table, $column);
		$query = $this->db->query($sql);
		$result = $query->result();
		return sizeof($result);
	}
	
	public function test_search_structure($structure='')
	{
		set_time_limit(0);
		$dbstr ="IDP.WORLD =(DESCRIPTION =(ADDRESS = (PROTOCOL = TCP)(HOST = IDP.cso.tpnet.intra)(PORT = 1521))
		 (CONNECT_DATA = (SERVICE_NAME = IDP.WORLD)))";
		$conn = oci_connect("FLEXASMU", "FLEXASMU", "IDP.cso.tpnet.intra:1521/IDP.WORLD");
		$sql = sprintf("SELECT * FROM GTO_DATA_STRUCTURE_V01 WHERE STRUCTURE = '%s'", $structure);
		$r = oci_parse($conn, $sql);
		oci_execute($r);
		$d = oci_fetch_array($r);
		$count = 0;
		while($d = oci_fetch_array($r)) {
			$count += 1;
		}
		if ($count > 0) {
			echo "Ada.. count: ".$count;
		} else {
			echo "Xdok!";
		}
	}
	
	public function search_structure($structure='')
	{
		set_time_limit(0);
		$dbstr ="IDP.WORLD =(DESCRIPTION =(ADDRESS = (PROTOCOL = TCP)(HOST = IDP.cso.tpnet.intra)(PORT = 1521))
		 (CONNECT_DATA = (SERVICE_NAME = IDP.WORLD)))";
		$conn = oci_connect("FLEXASMU", "FLEXASMU", "IDP.cso.tpnet.intra:1521/IDP.WORLD");
		$sql = sprintf("SELECT * FROM GTO_DATA_STRUCTURE_V01 WHERE STRUCTURE = '%s'", $structure);
		$r = oci_parse($conn, $sql);
		oci_execute($r);
		$d = oci_fetch_array($r);
		while($d = oci_fetch_array($r)) {
			$sqlx = "INSERT INTO imported_project";
			$cols = "imported_project_id";
			$vals = "'haha'";
			foreach($d as $column => $value) {
				if(!is_int($column) && $this->isValidColumn('marsdb', 'imported_project', $column)) {
					$cols .= ", ".$column;
					$vals .= ", '".str_replace("'", "", $value)."'";
				}
			}
			$sqlx .= " (".$cols.") VALUES (".$vals.")";
			$queryx = $this->db->query($sqlx);
		}
	}
}
