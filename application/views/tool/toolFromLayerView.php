<script>
   $(document).ready(function() {
       var table = $('#example').DataTable();
     
       $('#example tbody').on( 'click', 'tr', function () {
           if ( $(this).hasClass('selected') ) {
               $(this).removeClass('selected');
           }
           else {
               table.$('tr.selected').removeClass('selected');
               $(this).addClass('selected');
           }
   
           if(confirmation()==true)
           {

              // continue process
              // return the value

              var val = $(this).attr('value');
         
              var base_url="<?php echo site_url() ?>";
   
                  $.ajax({
             'url':base_url+'/admin/ajaxDisplayToolSheet/'+val,
             'success':function(response){
                window.location.href = base_url+'/admin/displayToolSheet/';
                    }
               });
   
   
           }
            else
           {
              $(this).removeClass('selected');
           }
   
       } );
    
       $('#button').click( function () {
           table.row('.selected').remove().draw( false );
       } );
   } );
   
   function confirmation() {
       return confirm("Are you sure you want to choose this Tool?");
   }
</script>
<div class="row">
   <div class="col-sm-5 col-sm-offset-3 col-md-10 col-md-offset-2 main">
      <?php
	  
$flex_diameter_setpoint = "";

$mini_int_diameter = "";
$mini_ext_diameter = "";
$mini_pitch = "";
$nom_int_diameter = "";
$nom_ext_diameter = "";
$nom_pitch = "";
$max_int_diameter = "";
$max_ext_diameter = "";
$max_pitch = "";
$structure_number = "";
$project_name = "";
$project_number = "";
$sess = $this->session->all_userdata();

if (!empty($projects)) {
	foreach($projects as $r) {
		$structure_number = $r->structure_number;
		$project_name = $r->project_name;
		$project_number = $r->project_number;
	}
	
	$tdd_size = sizeof($tdd);
	if ($tdd_size > 0) {
		$mini_int_diameter = $tdd[0]->DIAINTERCOUCHE + $tdd[0]->DIAINTERCOUCHETOLINF;
		$mini_ext_diameter = $tdd[0]->DIAEXTERCOUCHE + $tdd[0]->DIAEXTERCOUCHETOLINF;
		
		$nom_int_diameter = $tdd[0]->DIAINTERCOUCHE;
		$nom_ext_diameter = $tdd[0]->DIAEXTERCOUCHE;
		
		$max_int_diameter = $tdd[0]->DIAINTERCOUCHE + $tdd[0]->DIAINTERCOUCHETOLSUP;
		$max_ext_diameter = $tdd[0]->DIAEXTERCOUCHE + $tdd[0]->DIAEXTERCOUCHETOLSUP;
		
		$flex_diameter_setpoint = ($tdd[0]->DIAEXTERCOUCHE - $tdd[0]->EPCOUCHE) * $this->config->item('PI');
	}
}

?>
      <?php

if (!empty($structure_number)) {
?>
      <div class="col-md-3">
         Structure Number : <?php echo $structure_number; ?>
      </div>
      <?php
}

?>
      <?php

if (!empty($project_name)) {
?>
      <div class="col-md-3">
         Project Name : <?php echo $project_name; ?>
      </div>
      <?php
}

?>
      <?php

if (!empty($project_number)) {
?>
      <div class="col-md-3">
         Project Number : <?php echo $project_number; ?>
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
      <!-- Nav tabs -->
      <ul class="nav nav-tabs" role="tablist">
         <li class="active"><a href="#toolshet" role="tab" data-toggle="tab">Tool Sheet</a></li>
         <li><a href="#machinesetup" role="tab" data-toggle="tab">Machine Setup</a></li>
         <li><a href="#rigging" role="tab" data-toggle="tab">Rigging</a></li>
         <li><a href="#tooling" role="tab" data-toggle="tab">Tooling Requirement</a></li>
      </ul>
      <!-- Tab panes -->
      <div class="tab-content">
         <div class="tab-pane active" id="toolshet">
            <div class="container-fluid">
               <div class="row">
                  <div class="col-sm-12 col-md-12 main">
                     <h1 class="page-header">Select Tool</h1>
                  </div>
               </div>
               <div class="row">
                  <div class="col-sm-1">
                     <?php echo (!empty($sidebar)) ? $sidebar : "" ?>
                  </div>
                  <div id="hasil" class="col-sm-12">
                     <table id="example" class="display" cellspacing="0" width="100%">
                        <thead>
                           <tr>
                              <th>Tool Code</th>
                              <th>Tool Name</th>
                              <th>Status</th>
                           </tr>
                        </thead>
                        <tbody>
<?php
foreach($tools as $r) { 
	$range = $this->my_func->getRangeIDNom($structure_number, $sess['layer_name'], $r->nc_name);
	$boolMPList = $this->my_func->getRangeMPListCode($structure_number, $sess['layer_name'], $r->tool_id);
	$isFound = $this->my_func->getFoundNotFound($r->tool_code);
	$strFound = ($isFound == true) ? ("Found") : ("Not Found");
	// $boolMPList: list tools based on MP Code List
	// $range: list tools based on ID Nom Range
	if($boolMPList == true || ($range >= $r->min_range && $range <= $r->max_range)) {
?>                           
							<tr value="<?php echo $r->tool_id; ?>">
								<td><?php echo $r->tool_code; ?></td>
                              	<td><?php echo $r->tool_description; ?></td>
                                <td><?php echo $strFound; ?></td>
                           	</tr>
<?php
	}
}
?>
                        </tbody>
                     </table>
                  </div>
               </div>
            </div>
         </div>
         <div class="tab-pane" id="machinesetup">
         <form action="<?=site_url('admin/exportSheet'); ?>" method="post">
         	<input type="hidden" name="stat" value="1" />
            <!-- machine setup -->
            <style>
               .table-bordered > thead > tr > th,
               .table-bordered > tbody > tr > th,
               .table-bordered > tfoot > tr > th,
               .table-bordered > thead > tr > td,
               .table-bordered > tbody > tr > td,
               .table-bordered > tfoot > tr > td {
               border: 1px solid #dddddd;
               border-right-width:1px;
               border-left-width:1px;
               }
            </style>
            <div class="table-responsive">
               <table class="table table-bordered">
                  <thead>
                     <tr>
                        <th rowspan="2">LOGO</th>
                        <th colspan="2">MACHINE SETUP SHEET</th>
                        <th>Dept</th>
                     </tr>
                  </thead>
                  <tbody>
                     <tr>
                        <td>cell is row 0, column 2</td>
                        <td><?php echo $project_name; ?></td>
                        <td colspan="2"><b>Methods and Tooling</b></td>
                     </tr>
                     <tr>
                        <td colspan="4">&nbsp;</td>
                     </tr>
                     <tr>
                        <td>Doc Code</td>
                        <td colspan="3"><?=$sess['transaction_number']; ?></td>
                     </tr>
                     <tr>
                        <td>Prepared By</td>
                        <td><?=strtoupper($sess['fullname']); ?></td>
                        <td>Rev</td>
                        <td><label>
                            <input class="form-control" placeholder="Rev" type="text" name="rev" id="rev" />
                          </label></td>
                     </tr>
                     <tr>
                        <td>Checked By</td>
                        <td><label>
                            <input class="form-control" placeholder="Checked By" type="text" name="checked_by" id="checked_by" />
                          </label></td>
                        <td>Date</td>
                        <td><?php
$t = time();
echo (date("d-m-Y", $t));
?></td>
                     </tr>
                     <tr>
                        <td>Structure</td>
                        <td><?=$structure_number; ?></td>
                        <td>Job nrs</td>
                        <td>
                          <label>
                            <input class="form-control" placeholder="Job nrs" type="text" name="job_nrs" id="job_nrs" />
                          </label>
                        </td>
                     </tr>
                     <tr>
                        <td>Composition</td>
                        <td><?=$unique_layers; ?>&nbsp;</td>
                        <td>cum. Mass</td>
                        <td><?=$cumMass; ?>&nbsp;</td>
                     </tr>
                     <tr>
                        <td colspan="4">&nbsp;</td>
                     </tr>
                     <tr>
                        <td></td>
                        <td>mini(mm)</td>
                        <td>nominal(mm)</td>
                        <td>maxi(mm)</td>
                     </tr>
                     <tr>
                        <td>Int Diameter</td>
                        <td><?=$mini_int_diameter; ?></td>
                        <td><?=$nom_int_diameter; ?></td>
                        <td><?=$max_int_diameter; ?></td>
                     </tr>
                     <tr>
                        <td>Ext Diameter</td>
                        <td><?=$mini_ext_diameter; ?></td>
                        <td><?=$nom_ext_diameter; ?></td>
                        <td><?=$max_ext_diameter; ?></td>
                     </tr>
                     <tr>
                        <td>Pitch for 20 rotations</td>
                        <td><?=$mini_pitch; ?></td>
                        <td><?=$nom_pitch; ?></td>
                        <td><?=$max_pitch; ?></td>
                     </tr>
                     <tr>
                        <td colspan="4">&nbsp;</td>
                     </tr>
                     <tr>
                        <td>Material</td>
                        <td><?=$material[0]->type_of_production; ?></td>
                        <td>DIMENSION</td>
                        <td><?=$material[0]->type_of_production_size; ?></td>
                     </tr>
                     <tr>
                        <td>IC Thickness (mm)</td>
                        <td>&nbsp;</td>
                        <td></td>
                        <td></td>
                     </tr>
                     <tr>
                        <td>PLF Length (m)</td>
                        <td><label>
                            <input class="form-control" placeholder="PLF Length (m)" type="text" name="plf_length" id="plf_length" />
                          </label>&nbsp;</td>
                        <td>Overlength</td>
                        <td><label>
                            <input class="form-control" placeholder="Overlength" type="text" name="overlength" id="overlength" />
                          </label>&nbsp;</td>
                     </tr>
                     <tr>
                        <td colspan="4">&nbsp;</td>
                     </tr>
                     <tr>
                        <td>Machine</td>
                        <td colspan="3"><?=$material[0]->material_code; ?></td>
                     </tr>
                     <tr>
                        <td colspan="4">&nbsp;</td>
                     </tr>
                     <tr>
                        <td>Particular Instructions</td>
                        <td>cell is row 18, column 1</td>
                        <td>cell is row 18, column 2</td>
                        <td>cell is row 18, column 3</td>
                     </tr>
                     <tr>
                       <td colspan="4">&nbsp;</td>
                     </tr>
                     <tr>
                       <td colspan="2">CRIMPING ROLLERS</td>
                       <td>Dwg nr.</td>
                       <td><?=$material[0]->ref_num; ?></td>
                     </tr>
                     <tr>
                       <td colspan="2">Diameter</td>
                       <td>&nbsp;</td>
                       <td><?=$material[0]->crimping_rollers; ?> mm</td>
                     </tr>
                     <tr>
                       <td colspan="4">&nbsp;</td>
                     </tr>
                     <tr>
                       <td colspan="2">CINEMATIC OF THE MACHINE</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                     </tr>
                     <tr>
                       <td colspan="2">Max. operating speed*</td>
                       <td>&nbsp;</td>
                       <td>49 rpm</td>
                     </tr>
                     <tr>
                       <td colspan="2">Max. scrolling speed</td>
                       <td>&nbsp;</td>
                       <td><?=$material[0]->max_scroll_speed; ?> m/min</td>
                     </tr>
                     <tr>
                       <td colspan="2">Gear ratio</td>
                       <td>&nbsp;</td>
                       <td><?=$material[0]->ratio; ?></td>
                     </tr>
                     <tr>
                       <td colspan="2">Flexible diameter set point</td>
                       <td>&nbsp;</td>
                       <td><?=$flex_diameter_setpoint; ?> mm</td>
                     </tr>
                     <tr>
                       <td colspan="4">&nbsp;</td>
                     </tr>
                     <tr>
                       <td colspan="2">LUBRICATION</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                     </tr>
                     <tr>
                       <td colspan="2">Type</td>
                       <td>&nbsp;</td>
                       <td><?=$material[0]->oil1; ?>&nbsp;</td>
                     </tr>
                     <tr>
                       <td colspan="4">&nbsp;</td>
                     </tr>
                     <tr>
                       <td colspan="4">CONFIGURATION</td>
                     </tr>
                     <tr>
                       <td colspan="2">ROLLERS SETS</td>
                       <td>Dwg nr.</td>
                       <td><?=$material[0]->ref_num; ?></td>
                     </tr>
                     <tr>
                       <td colspan="4">&nbsp;</td>
                     </tr>
                     <tr>
                       <td colspan="2">Rollers</td>
                       <td colspan="2">1,2,3,4,5,6,-,8</td>
                     </tr>
                     <tr>
                       <td colspan="2">Intermediate roller 1</td>
                       <td colspan="2">4&lt;I&lt;5</td>
                     </tr>
                     <tr>
                       <td colspan="2">Intermediate roller 2</td>
                       <td colspan="2">5&lt;I&lt;6</td>
                     </tr>
                     <tr>
                       <td colspan="4"><img src="<?=base_url(); ?>assets/images/bawah_roller_set.png" alt="" /></td>
                     </tr>
                  </tbody>
               </table>
</div>
            <div class="row">
            	<div class="col-md-12" style="margin-bottom:5%;">
                	<button class="btn btn-primary" type="submit">Export</button>
                </div>
            </div>
         </form>
         </div>
         <div class="tab-pane" id="rigging">
         <form action="<?=site_url('admin/exportSheet'); ?>" method="post">
         <input type="hidden" name="stat" value="2" />
            <style>
               .table-bordered > thead > tr > th,
               .table-bordered > tbody > tr > th,
               .table-bordered > tfoot > tr > th,
               .table-bordered > thead > tr > td,
               .table-bordered > tbody > tr > td,
               .table-bordered > tfoot > tr > td {
               border: 1px solid #dddddd;
               border-right-width:1px;
               border-left-width:1px;
               }
            </style>
            <div class="table-responsive">
              <table class="table table-bordered">
                <thead>
                  <tr>
                    <th rowspan="2">LOGO</th>
                    <th colspan="2">RIGGING KIT FOR INNER CARCASS</th>
                    <th colspan="2">Dept</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>cell is row 0, column 2</td>
                    <td>4&quot; Kuito</td>
                    <td colspan="3"><b>Methods and Tooling</b></td>
                  </tr>
                  <tr>
                    <td colspan="5">&nbsp;</td>
                  </tr>
                  <tr>
                    <td>Doc Code</td>
                    <td colspan="4"><?=$sess['transaction_number']; ?></td>
                  </tr>
                  <tr>
                    <td>Prepared By</td>
                    <td><?=strtoupper($sess['fullname']); ?></td>
                    <td>Rev</td>
                    <td colspan="2"><label>
                      <input class="form-control" placeholder="Rev" type="text" name="rev" id="rev2" />
                    </label></td>
                  </tr>
                  <tr>
                    <td>Checked By</td>
                    <td><label>
                      <input class="form-control" placeholder="Checked By" type="text" name="checked_by" id="checked_by2" />
                    </label></td>
                    <td>Date</td>
                    <td colspan="2"><?php
$t = time();
echo (date("d-m-Y", $t));
?></td>
                  </tr>
                  <tr>
                    <td>Structure</td>
                    <td><?=$structure_number; ?></td>
                    <td>Job nrs</td>
                    <td colspan="2"><label>
                      <input class="form-control" placeholder="Job nrs" type="text" name="job_nrs" id="job_nrs2" />
                    </label></td>
                  </tr>
                  <tr>
                    <td>Composition</td>
                    <td><?=$unique_layers; ?>
                      &nbsp;</td>
                    <td>cum. Mass</td>
                    <td colspan="2"><?=$cumMass; ?>
                      &nbsp;</td>
                  </tr>
                  <tr>
                    <td colspan="5">&nbsp;</td>
                  </tr>
                  <tr>
                    <td>Machine</td>
                    <td colspan="4"><?=$material[0]->material_code; ?></td>
                  </tr>
                  <tr>
                    <td colspan="5">&nbsp;</td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td>Spec</td>
                    <td>Max. working load</td>
                    <td>Qty</td>
                    <td>Ref</td>
                  </tr>
                  <tr>
                    <td>Cable</td>
                    <td>cable_spec</td>
                    <td>cable_max_load</td>
                    <td>1</td>
                    <td><input class="form-control" placeholder="Job nrs" type="text" name="cable_ref" id="cable_ref" /></td>
                  </tr>
                  <tr>
                    <td>Shackle</td>
                    <td>shackle_spec</td>
                    <td>shackle_max_load</td>
                    <td>3</td>
                    <td><input class="form-control" placeholder="Job nrs" type="text" name="shackle_ref" id="shackle_ref" /></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td>Spec</td>
                    <td>Max. working load</td>
                    <td>Qty</td>
                    <td>Ref</td>
                  </tr>
                  <tr>
                    <td>Mooring kit</td>
                    <td>&nbsp;</td>
                    <td>3.3 T</td>
                    <td>2</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>Reel flange kit</td>
                    <td>Chain 1.44m x 4.8T,<br />
                      Shackle 4.75 T, Masterlink<br />
                      6.5 T</td>
                    <td>4.75 T</td>
                    <td>2</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>Shackle</td>
                    <td>&nbsp;</td>
                    <td>4.75 T</td>
                    <td>3</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>Masterlink Assembly</td>
                    <td>&nbsp;</td>
                    <td>6.5 T</td>
                    <td>1</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td>Spec</td>
                    <td>Max. working load</td>
                    <td>Qty</td>
                    <td>Ref</td>
                  </tr>
                  <tr>
                    <td>Master Link</td>
                    <td>&nbsp;</td>
                    <td>6.5 T</td>
                    <td>1</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>Round Sling</td>
                    <td>lth. 5 m</td>
                    <td>3 T</td>
                    <td>1</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>Pulling Strap</td>
                    <td>lth. 10 m</td>
                    <td>4 T</td>
                    <td>1</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td colspan="5"><img src="<?=base_url(); ?>assets/images/rigging_sheet1.png" width="354" height="261" /></td>
                  </tr>
                </tbody>
              </table>
            </div>
            <div class="row">
            	<div class="col-md-12" style="margin-bottom:5%;">
                	<button class="btn btn-primary" type="submit">Export</button>
                </div>
            </div>
         </form>
         </div>
         <div class="tab-pane" id="tooling">
            <style>
               .table-bordered > thead > tr > th,
               .table-bordered > tbody > tr > th,
               .table-bordered > tfoot > tr > th,
               .table-bordered > thead > tr > td,
               .table-bordered > tbody > tr > td,
               .table-bordered > tfoot > tr > td {
               border: 1px solid #dddddd;
               border-right-width:1px;
               border-left-width:1px;
               }
            </style>
            <div class="table-responsive">
               <!--<table class="table table-bordered">
                  <thead>
                     <tr>
                        <th rowspan="2">LOGO</th>
                        <th colspan="2">TOOLS REQUIREMENT FOR INNER CARCASS</th>
                        <th>Dept</th>
                     </tr>
                  </thead>
                  <tbody>
                     <tr>
                        <td>cell is row 0, column 2</td>
                        <td colspan="2">4" Kuito (Riser and Flowline)</td>
                        <td colspan="2"><b>Methods and Tooling</b></td>
                     </tr>
                     <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                     </tr>
                     <tr>
                        <td>Doc Code</td>
                        <td colspan="3">1719-PSS-IND-SSC-10.11783</td>
                     </tr>
                     <tr>
                        <td>Prepared By</td>
                        <td>YAP HUI CHEK</td>
                        <td>Rev</td>
                        <td>0</td>
                     </tr>
                     <tr>
                        <td>Checked By</td>
                        <td></td>
                        <td>Date</td>
                        <td><?php
$t = time();
echo (date("d-m-Y", $t));
?></td>
                     </tr>
                     <tr>
                        <td>Structure</td>
                        <td>101.11788</td>
                        <td>Job nrs</td>
                        <td>17197 01</td>
                     </tr>
                     <tr>
                        <td>Composition (SF 01)</td>
                        <td>IC PS ZS TA EXS</td>
                        <td>cum. Mass</td>
                        <td>7.93</td>
                     </tr>
                     <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                     </tr>
                     <tr>
                        <td></td>
                        <td>mini(mm)</td>
                        <td>nominal(mm)</td>
                        <td>maxi(mm)</td>
                     </tr>
                     <tr>
                        <td>Int Diameter</td>
                        <td>100.6</td>
                        <td>100.6</td>
                        <td>100.6</td>
                     </tr>
                     <tr>
                        <td>Ext Diameter</td>
                        <td>100.6</td>
                        <td>100.6</td>
                        <td>100.6</td>
                     </tr>
                     <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                     </tr>
                     <tr>
                        <td>Material</td>
                        <td>DUPLEX</td>
                        <td>DIMENSION</td>
                        <td>48.0 x 1.0</td>
                     </tr>
                     <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                     </tr>
                     <tr>
                        <td>Machine</td>
                        <td colspan="3">SP 17</td>
                     </tr>
                     <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                     </tr>
                     <tr>
                        <td colspan="3">Mandrel</td>
                        <td colspan"2">Dwg No</td>
                     </tr>
                     <tr>
                        <td colspan="3">Internal Caliper</td>
                        <td colspan"2">Dwg No</td>
                     </tr>
                     <tr>
                        <td colspan="3">External Caliper</td>
                        <td colspan"2">Dwg No</td>
                     </tr>
                     <tr>
                        <td colspan="3">End Cap</td>
                        <td colspan"2">Dwg No</td>
                     </tr>
                  </tbody>
               </table>-->
            </div>
         </div>
      </div>
   </div>
</div>