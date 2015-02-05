<script>
   $(document).ready(function() {
       var table = $('#example').DataTable();
       var table2 = $('#example2').DataTable();
   
   
   
   } );
   
</script>
<div class="container-fluid">
<div class="row">
   <div class="col-sm-5 col-sm-offset-3 col-md-10 col-md-offset-2 main">
      <?php
	  	  $structure_number="";
          $project_name="";
          $project_number="";
		  $layer_name="";

$sess = $this->session->all_userdata();
		  
         if(!empty($projects))
         {
			 //print_r($this->session->all_userdata());
          	$structure_number = $this->session->all_userdata()['structure_number'];
          	$layer_name = $this->session->all_userdata()['layer_name'];
         
             foreach($projects as $r)
                {
                    $structure_number=$r->structure_number;
                   $project_name=$r->project_name;
                     $project_number=$r->project_number;
                }
         }
          ?>
      <?php
         if(!empty($structure_number))
         {
           ?>
      <div class="col-md-3">
         Structure Number : <?=$structure_number?>
      </div>
      <?php
         }
         ?>
      <?php
         if(!empty($project_name))
         {
           ?>
      <div class="col-md-3">
         Project Name : <?=$project_name?>
      </div>
      <?php
         }
         ?>
      <?php
         if(!empty($project_number))
         {
           ?>
      <div class="col-md-3">
         Project Number : <?=$project_number?>
      </div>
      <?php
         }
         ?>
               <?php

if (isset($sess['layer_name']) && !empty($sess['layer_name'])) {
?>
      <div class="col-md-3">
         Layer Name : <?php echo $sess['layer_name']; ?>
      </div>
      <?php
}
//print_r($sess['selected_tool_id']);
$tool_pilih = $this->m_tool->getToolDetail($sess['selected_tool_id']);
$tool_name_pilih = "";
if (isset($tool_pilih) && !empty($tool_pilih)) {
	//print_r($tool_pilih);
	$tool_name_pilih = $tool_pilih[0]->tool_code;
}
?>
   </div>
</div>

 <div class="row">
    	<div class="col-md-2 col-md-offset-2 main">
    		<button class="btn btn-lg btn-primary btn-block" name="search" type="button" onclick="history.back(-1);">Back</button>
        </div>
    </div>

<div class="row">
   <div class="col-sm-10 col-sm-offset-2">
      
      <div class="row">
               <div class="col-sm-12">
                  <h1 class="page-header">Tool Sheet</h1>
                  <h2><?=$tool_name_pilih; ?></h2>
                  <?php
                     if(!empty($file_url))
                     {
                       ?>
                  <img style="margin-top:2%" src="<?=base_url('assets/uploads/files/'.$file_url)?>" />
                  <?php
                     }
                     else
                     {
                       ?>
                  <div class="alert alert-warning alert-dismissible" role="alert">Image Not Found, or maybe not uploaded yet!</div>
                  <?php
                     }
                     ?>
               </div>
            </div>
            <!--end-->
            <div class="col-sm-10">
               <?php
                  if(!empty($rule_number))
                  {
                    ?>
               <div class="alert alert-info alert-dismissible" role="alert">Rule number <?=$rule_number?> is selected </div>
               <?php
                  }
                   ?>
               <table id="example">
                  <thead>
                     <tr>
                        <th rowspan="2">Parameter Number</th>
                        <th rowspan="2">Parameter</th>
                        <th rowspan="2">Mex Tooling Name</th>
                        <th rowspan="2">Nominal</th>
                        <th colspan="2">Tol</th>
                        <th rowspan="2"></th>
                     </tr>
                     <tr>
                        <td>-</td>
                        <td>+</td>
                     </tr>
                  </thead>
                  <tbody>
                     <?php
					 	$nts = array();
						
                        if(!empty($rules))
                        {
							//print_r($rules);
                        foreach($rules as $r)
                        {
							$nt_name = "";
							$val_formula = $this->my_func->getFormulaValue($structure_number, $layer_name, $r->pio_id, $r->rp_formula, $r->param_code, $r->rule_id, $sess['diaintercouche']);
							if ($r->nt_id != '0' && $r->nt_id != 0) {
								$noms = $this->my_func->getNominalTypeDetails($r->nt_id);
								if (!empty($noms)) {
									$nt_name = $noms[0]->nt_name;
									$nts[] = array(
										'nt_name' => $nt_name,
										'nt_value' => number_format($val_formula, 2),
										'nt_id' => $r->nt_id
									);
								}
							}
                          ?>
                     <tr>
                        <td><?php //print_r($r); ?>
						<?=$r->param_number?></td>
                        <td><?=$r->param_code?></td>
                        <td><?=$nt_name?></td>
                        <!--<td><?=$r->rp_post_value?></td>-->
                        <td><?=$val_formula; ?></td>
                        <td><?=$r->param_tol_min?></td>
                        <td><?=$r->param_tol_plus?></td>
                        <td></td>
                     </tr>
                     <?php
                        }
                        }
                        
                        ?>
                  </tbody>
               </table>
               <div class="row" style="margin-top:5%">
                  <div class="col-sm-12">
                     <h1>Tooling Master</h1>
                     <?php
					 //print_r($sess);
					 //print_r($nts);
					 ?>
                  </div>
               </div>
               <div class="row">
                  <div class="col-sm-12">
                  	<table id="example2">
                    	<thead>
                        	<tr>
                            	<th>Drawing No</th>
                                <th>Location</th>
                                <th>Quantity</th>
                                <th>Tooling Name</th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php
						$tooling_name = $tool_name_pilih;
						$machine_type = '';
						$nominal_type_results = $this->m_tool->getToolingMaster2($tooling_name, $sess['selected_tool_id'], $nts);
						
						//print_r($tooling_name); echo "<br />";
						//print_r($sess['selected_tool_id']); echo "<br />";
						//print_r($nts); echo "<br />";
						
						if(isset($nominal_type_results)) { foreach($nominal_type_results as $ntr) { ?>
                        	<tr>
                            	<td><?=$ntr->drwg_no_x; ?></td>
                                <td><?=$ntr->LOCATION; ?></td>
                                <td><?=$ntr->qty_x; ?></td>
                                <td><?=$ntr->tooling_name_x; ?></td>
                            </tr>
                        <?php } } ?>
                        </tbody>
                    </table>
                     <!--<table id="example2">
                        <thead>
                           <tr>
                              <?php
                                 if(!empty($nominal_type_results))
                                 {
                                   foreach($nominal_type_results[0] as $r=>$v)
                                   {
                                    ?>
                              <th><?=$r?></th>
                              <?php 
                                 }
                                 }
                                 else
                                 {
                                 ?>
                              <th>COLUMN NOT FOUND</th>
                              <?php
                                 }
                                 ?>
                           </tr>
                        </thead>
                        <tbody>
                           <tr>
                              <?php
                                 if(!empty($nominal_type_results))
                                 {
                                  foreach($nominal_type_results[0] as $r=>$v)
                                  {
                                   ?>
                              <td><?=$v?></td>
                              <?php
                                 }
                                 }
                                 else
                                 {
                                 ?>
                              <td>Empty</td>
                              <?php
                                 }
                                     ?>
                           </tr>
                        </tbody>
                     </table>-->
                  </div>
               </div>
            </div>
      
   </div>
   <div class="row">
      <div class="col-sm-1">
         <?=(!empty($sidebar))?$sidebar:""?>
      </div>
   </div>
</div>