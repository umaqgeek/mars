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
   </div>
</div>
<div class="row">
   <div class="col-sm-10 col-sm-offset-2">
      
      <div class="row">
               <div class="col-sm-12">
                  <h1 class="page-header">Tool Sheet</h1>
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
                        if(!empty($rules))
                        {
							//print_r($rules);
                           foreach($rules as $r)
                        {
                          ?>
                     <tr>
                        <td><?=$r->param_number?></td>
                        <td><?=$r->param_code?></td>
                        <!--<td><?=$r->rp_post_value?></td>-->
                        <td><?=$this->my_func->getFormulaValue($structure_number, $layer_name, $r->pio_id, $r->rp_formula, $r->param_code, $r->rule_id)?></td>
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
                  </div>
               </div>
               <div class="row">
                  <div class="col-sm-12">
                     <table id="example2">
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
                     </table>
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