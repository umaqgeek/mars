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


               <table class="table table-bordered" border="1">
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
                        <td>4" Kuito</td>
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
                        <td><?=$rev; ?></td>
                     </tr>
                     <tr>
                        <td>Checked By</td>
                        <td><?=$checked_by; ?></td>
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
                        <td><?=$job_nrs; ?></td>
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
                        <td><?=$plf_length; ?>&nbsp;</td>
                        <td>Overlength</td>
                        <td><?=$overlength; ?>&nbsp;</td>
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