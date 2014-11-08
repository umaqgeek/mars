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

$mini_int_diameter = "";
$mini_ext_diameter = "";
$mini_pitch = "";
$nom_int_diameter = "";
$nom_ext_diameter = "";
$nom_pitch = "";
$max_int_diameter = "";
$max_ext_diameter = "";
$max_pitch = "";

if (!empty($projects)) {
	$structure_number = "";
	$project_name = "";
	$project_number = "";
	foreach($projects as $r) {
		$structure_number = $r->structure_number;
		$project_name = $r->project_name;
		$project_number = $r->project_number;
	}
	
	$tdd = $this->m_imported_project->getAll($structure_number, $layer_name);
	$tdd_size = sizeof($tdd);
	if ($tdd_size > 0) {
		$mini_int_diameter = $tdd[0]->DIAINTERCOUCHE + $tdd[0]->DIAINTERCOUCHETOLINF;
		$mini_ext_diameter = $tdd[0]->DIAEXTERCOUCHE + $tdd[0]->DIAEXTERCOUCHETOLINF;
		
		$nom_int_diameter = $tdd[0]->DIAINTERCOUCHE;
		$nom_ext_diameter = $tdd[0]->DIAEXTERCOUCHE;
		
		$max_int_diameter = $tdd[0]->DIAINTERCOUCHE + $tdd[0]->DIAINTERCOUCHETOLSUP;
		$max_ext_diameter = $tdd[0]->DIAEXTERCOUCHE + $tdd[0]->DIAEXTERCOUCHETOLSUP;
		
	}
}

?>
      <?php

if (!empty($structure_number)) {
?>
      <div class="col-md-3">
         Structure Number : <?php echo $structure_number ?>
      </div>
      <?php
}

?>
      <?php

if (!empty($project_name)) {
?>
      <div class="col-md-3">
         Project Name : <?php echo $project_name ?>
      </div>
      <?php
}

?>
      <?php

if (!empty($project_number)) {
?>
      <div class="col-md-3">
         Project Number : <?php echo $project_number ?>
      </div>
      <?php
}

?>
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
                  <div class="col-sm-5 col-sm-offset-3 col-md-10 col-md-offset-2 main">
                     <h1 class="page-header">Select Tool</h1>
                  </div>
               </div>
               <div class="row">
                  <div class="col-sm-1">
                     <?php echo (!empty($sidebar)) ? $sidebar : "" ?>
                  </div>
                  <div id="hasil" class="col-sm-10 col-sm-offset-2">
                     <table id="example" class="display" cellspacing="0" width="100%">
                        <thead>
                           <tr>
                              <th>Tool Code</th>
                              <th>Tool Name</th>
                           </tr>
                        </thead>
                        <tbody>
                           <?php

foreach($tools as $r) {
?>
                           <tr value="<?php echo $r->tool_id
?>">
                              <td><?php echo $r->tool_code
?></td>
                              <td><?php echo $r->tool_description
?></td>
                           </tr>
                           <?php
}

?>
                        </tbody>
                     </table>
                  </div>
               </div>
            </div>
         </div>
         <div class="tab-pane" id="machinesetup">
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
                        <td colspan="2">4" Kuito</td>
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
                        <td>IC Thickness (mm)</td>
                        <td>5</td>
                        <td></td>
                        <td></td>
                     </tr>
                     <tr>
                        <td>PLF Length (m) (SF 01)</td>
                        <td>780</td>
                        <td>Overlength</td>
                        <td>20</td>
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
                        <td>Particular Instructions</td>
                        <td>cell is row 18, column 1</td>
                        <td>cell is row 18, column 2</td>
                        <td>cell is row 18, column 3</td>
                     </tr>
                     <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                     </tr>
                     <tr>
                        <td colspan="4">CONFIGURATION</td>
                     </tr>
                     <tr>
                       <td colspan="2">ROLLERS SETS</td>
                       <td>Dwg nr.</td>
                       <td>5363</td>
                     </tr>
                     <tr>
                       <td colspan="2">&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                     </tr>
                     <tr>
                       <td colspan="2">CRIMPING ROLLERS</td>
                       <td>Dwg nr.</td>
                       <td>5363</td>
                     </tr>
                     <tr>
                       <td colspan="2">Diameter</td>
                       <td>&nbsp;</td>
                       <td>120 mm</td>
                     </tr>
                     <tr>
                       <td colspan="2">&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                     </tr>
                     <tr>
                       <td colspan="2">CINEMATIC OF THE MACHINE</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                     </tr>
                     <tr>
                       <td colspan="2">Max. operating speed</td>
                       <td>&nbsp;</td>
                       <td>49 rpm</td>
                     </tr>
                     <tr>
                       <td colspan="2">Max. scrolling speed</td>
                       <td>&nbsp;</td>
                       <td>50.0 m/min</td>
                     </tr>
                     <tr>
                       <td colspan="2">Gear ratio</td>
                       <td>&nbsp;</td>
                       <td>2 - 5</td>
                     </tr>
                     <tr>
                       <td colspan="2">Flexible diameter set point</td>
                       <td>&nbsp;</td>
                       <td>939.1 mm</td>
                     </tr>
                     <tr>
                       <td colspan="2">&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                     </tr>
                     <tr>
                       <td colspan="2">LUBRICATION</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                     </tr>
                     <tr>
                       <td colspan="2">Type</td>
                       <td>&nbsp;</td>
                       <td>PCRM7</td>
                     </tr>
                  </tbody>
               </table>
            </div>
         </div>
         <div class="tab-pane" id="rigging">
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
                        <td>Pitch for 20 rotations</td>
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
                        <td>IC Thickness (mm)</td>
                        <td>5</td>
                        <td></td>
                        <td></td>
                     </tr>
                     <tr>
                        <td>PLF Length (m) (SF 01)</td>
                        <td>780</td>
                        <td>Overlength</td>
                        <td>20</td>
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
                        <td colspan="4">RIGGING KIT FOR THE BEGINNING LINE</td>
                     </tr>
                     <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
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
                        <td>Pitch for 20 rotations</td>
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
                        <td colspan="4">RIGGING KIT FOR THE END OF THE LINE</td>
                     </tr>
                     <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
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
                        <td>Pitch for 20 rotations</td>
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
                        <td colspan="4">RIGGING KIT FOR MANIPULATION</td>
                     </tr>
                     <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
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
                        <td>Pitch for 20 rotations</td>
                        <td>100.6</td>
                        <td>100.6</td>
                        <td>100.6</td>
                     </tr>
                  </tbody>
               </table>
            </div>
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
               <table class="table table-bordered">
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
               </table>
            </div>
         </div>
      </div>
   </div>
</div>