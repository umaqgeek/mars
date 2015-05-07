<script>
   $(document).ready(function() {
       
       $(".chooseVal").click(function() {
            var val1=$(this).attr("value");
            var url="<?=site_url('admin/showTableLayerRule'); ?>/"+val1;
            newwindow=window.open(url,'name','height=600,width=1000,scrollbars=1');
       });
       
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

              var vals = $(this).attr('value').split('|');
			  var val = vals[0];
			  
			  var tool_code = vals[1];
         
              var base_url="<?php echo site_url() ?>";
   
				if (tool_code == 'DIE' || tool_code.search('PIN') != -1 || tool_code == 'GAP') {
					
					$.ajax({
						  'url':base_url+'/admin/ajaxDisplayToolSheet/'+val,
						  'success':function(response){
					
							window.location.href = base_url+'/admin/DisplayPressureSheath/';
						 }
					});
					
				} else {
					
					  $.ajax({
				 'url':base_url+'/admin/ajaxDisplayToolSheet/'+val,
				 'success':function(response){
					window.location.href = base_url+'/admin/displayToolSheet/';
						}
				   });
				}
   
   
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
$material_ratio = "";
$sess = $this->session->all_userdata();
//print_r($material);

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
		$mini_pitch = $tdd[0]->DIAINTER * 20;
		$nom_int_diameter = $tdd[0]->DIAINTERCOUCHE;
		$nom_ext_diameter = $tdd[0]->DIAEXTERCOUCHE;
		$nom_pitch = $tdd[0]->DIAINTER * 20;
		$max_int_diameter = $tdd[0]->DIAINTERCOUCHE + $tdd[0]->DIAINTERCOUCHETOLSUP;
		$max_ext_diameter = $tdd[0]->DIAEXTERCOUCHE + $tdd[0]->DIAEXTERCOUCHETOLSUP;
		$max_pitch = $tdd[0]->DIAINTER * 20;
		$flex_diameter_setpoint = ($tdd[0]->DIAEXTERCOUCHE - $tdd[0]->EPCOUCHE) * $this->config->item('PI');
		
		if (isset($material[0])) {
			$idnom = $tdd[0]->DIAINTER;
			$mat = $material[0];
			$pecahm = explode('x', str_replace(' ', '', $mat->type_of_production_size));
			$totalm = (isset($pecahm[1])) ? ($pecahm[0] * $pecahm[1]) : (0);
			if ($totalm <= 160) {
				if ($idnom >= 57 && $idnom < 90) {
					$material_ratio = "1-4";
				} else if ($idnom >= 90 && $idnom < 135) {
					$material_ratio = "2-4";
				} else if ($idnom >= 135 && $idnom < 245) {
					$material_ratio = "1-5";
				} else if ($idnom >= 245 && $idnom < 450) {
					$material_ratio = "2-5";
				}
			} else {
				if ($idnom >= 177 && $idnom < 245) {
					$material_ratio = "1-5";
				} else if ($idnom >= 245 && $idnom < 450) {
					$material_ratio = "2-5";
				}
			}
		}
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
$ii=0;
$arrDrawing = array();
foreach($tools as $r) { 
	$range = $this->my_func->getRangeIDNom($structure_number, $sess['layer_name'], $r->nc_name);
        $boolMPList = $this->my_func->getRangeMPListCode($structure_number, $sess['layer_name'], $r->tool_id);
	$isFound = false;
	if (strtoupper($r->tool_code) != strtoupper('DIE')
	&& strtoupper($r->tool_code) != strtoupper('GAP')
	&& strtoupper($r->tool_code) != strtoupper('PIN')) {
		$isFound = $this->my_func->getFoundNotFound($r->tool_id);
	}
	$strFound = ($isFound === true) ? ("Found") : ("Not Found");
	
	if ( strpos(strtoupper($r->tool_code), 'PIN')!==false || strpos(strtoupper($r->tool_code), 'GAP')!==false || strpos(strtoupper($r->tool_code), 'DIE')!==false ) {
		$strFound = "Not Calculated";
	}
	
	if ($isFound) {
		$drawingList = $this->my_func->getDrawingList($r->tool_id);
		$arrDrawing = array_merge($arrDrawing, $drawingList);
	}
	
	// $boolMPList: list tools based on MP Code List
	// $range: list tools based on ID Nom Range
        if(($boolMPList == true || ($range >= $r->min_range && $range <= $r->max_range) || 1==1 )
		&& ( strpos(strtoupper($r->tool_code), 'GAP')===false && strpos(strtoupper($r->tool_code), 'DIE')===false )) {
?>

							<tr value="<?php echo $r->tool_id; ?>|<?php echo $r->tool_code; ?>|d">
								<td><?php echo $r->tool_code; ?></td>
                              	<td><?php echo $r->tool_description; ?></td>
                                <td><?php echo $strFound; ?></td>
                           	</tr>
<?php
	}
	$ii += 1;
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
                        <td>&nbsp;</td>
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
                        <td><?=number_format($cumMass, 2); ?>&nbsp;</td>
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
                        <td colspan="3"><?=$layer_detail[0]->machine_code; ?></td>
                     </tr>
                     <tr>
                        <td colspan="4">&nbsp;</td>
                     </tr>
                     
                     <?php
                     if (strpos(strtoupper($sess['layer_name']), strtoupper("SHEATH")) !== false) {
                         //true sheath
                     ?>
                     <tr>
                         <td colspan="4">Particular Instructions</td>
                     </tr>
                     <?php
                     if (!empty($ruleLayer)) {
                         $irl=1;
                         foreach ($ruleLayer as $rl) {
                             ?>
                     <tr>
                         <td><?=$irl++; ?>.</td>
                         <td><?=$rl->lrs_property; ?></td>
                         <td colspan="2">
                         <?php 
                         if ($rl->lrst_id == 1) {
                            echo $rl->lrs_value;
                         } else {
                             ?>
                             <button type="button" class="chooseVal" value="<?=$rl->lrs_id; ?>">Choose Value</button>
                             <?php
                         }
                         ?></td>
                     </tr>
                     <?php
                         }
                     }
                     ?>
                     <?php
                     } else {
                         //false sheath
                     ?>
                     
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
                       <td><?=$material_ratio; ?></td>
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
                     <?php
                     } 
                     ?>
                     
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
                        <td>&nbsp;</td>
                        <td><?php echo $project_name; ?></td>
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
                    <td colspan="2"><?=number_format($cumMass, 2); ?>
                      &nbsp;</td>
                  </tr>
                  <tr>
                    <td colspan="5">&nbsp;</td>
                  </tr>
                  <tr>
                    <td>Machine</td>
                    <td colspan="4"><?=$layer_detail[0]->machine_code; ?></td>
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
         <form action="<?=site_url('admin/exportSheet'); ?>" method="post">
         <input type="hidden" name="stat" value="3" />
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
                     <th colspan="2">TOOLING SETUP SHEET</th>
                     <th colspan="2">Dept</th>
                   </tr>
                 </thead>
                 <tbody>
                   <tr>
                     <td>&nbsp;</td>
                     <td><?php echo $project_name; ?></td>
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
                       <input class="form-control" placeholder="Rev" type="text" name="rev" />
                     </label></td>
                   </tr>
                   <tr>
                     <td>Checked By</td>
                     <td><label>
                       <input class="form-control" placeholder="Checked By" type="text" name="checked_by" />
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
                       <input class="form-control" placeholder="Job nrs" type="text" name="job_nrs" />
                     </label></td>
                   </tr>
                   <tr>
                     <td>Composition</td>
                     <td><?=$unique_layers; ?>
                       &nbsp;</td>
                     <td>cum. Mass</td>
                     <td colspan="2"><?=number_format($cumMass, 2); ?>
                       &nbsp;</td>
                   </tr>
                   <tr>
                     <td colspan="5">&nbsp;</td>
                   </tr>
                   <tr>
                     <td></td>
                     <td>mini(mm)</td>
                     <td>nominal(mm)</td>
                     <td colspan="2">maxi(mm)</td>
                   </tr>
                   <tr>
                     <td>Int Diameter</td>
                     <td><?=$mini_int_diameter; ?></td>
                     <td><?=$nom_int_diameter; ?></td>
                     <td colspan="2"><?=$max_int_diameter; ?></td>
                   </tr>
                   <tr>
                     <td>Ext Diameter</td>
                     <td><?=$mini_ext_diameter; ?></td>
                     <td><?=$nom_ext_diameter; ?></td>
                     <td colspan="2"><?=$max_ext_diameter; ?></td>
                   </tr>
                   <tr>
                     <td colspan="5">&nbsp;</td>
                   </tr>
                   <tr>
                     <td>Material</td>
                     <td><?=$material[0]->type_of_production; ?></td>
                     <td>DIMENSION</td>
                     <td colspan="2"><?=$material[0]->type_of_production_size; ?></td>
                   </tr>
                   <tr>
                     <td>IC Thickness (mm)</td>
                     <td>&nbsp;</td>
                     <td></td>
                     <td colspan="2"></td>
                   </tr>
                   <tr>
                     <td colspan="5">&nbsp;</td>
                   </tr>
                   <tr>
                     <td>Machine</td>
                     <td colspan="4"><?=$layer_detail[0]->machine_code; ?></td>
                   </tr>
                   <tr>
                     <td colspan="5">&nbsp;</td>
                   </tr>
                   <tr>
                     <td>&nbsp;</td>
                     <td>&nbsp;</td>
                     <td>&nbsp;</td>
                     <td align="center">LOCATION</td>
                     <td align="center">QTY</td>
                   </tr>
                   <tr>
                     <td colspan="5">&nbsp;</td>
                   </tr>
<?php if(isset($arrDrawing)) { foreach($arrDrawing as $ntr) { ?>

<input type="hidden" name="drawingList[]" 
value="<?=$ntr->tooling_name_x; ?>|<?=$ntr->drwg_no_x; ?>|<?=$ntr->LOCATION; ?>|<?=$ntr->qty_x; ?>" />

                   <tr>
                     <td><?=$ntr->tooling_name_x; ?></td>
                     <td align="right">Dwg nr:</td>
                     <td align="right"><?=$ntr->drwg_no_x; ?></td>
                     <td align="center"><?=$ntr->LOCATION; ?></td>
                     <td align="center"><?=$ntr->qty_x; ?></td>
                   </tr>
                   <tr>
                     <td colspan="5">&nbsp;</td>
                   </tr>
<?php } } ?>
                   <tr>
                     <td colspan="5">&nbsp;</td>
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
      </div>
   </div>
</div>