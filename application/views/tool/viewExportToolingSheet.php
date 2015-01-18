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
      <th colspan="2">TOOLING SETUP SHEET</th>
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
      <td><?=$unique_layers; ?>
        &nbsp;</td>
      <td>cum. Mass</td>
      <td><?=$cumMass; ?>
        &nbsp;</td>
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
      <td colspan="4">&nbsp;</td>
    </tr>
    <tr>
      <td>Machine</td>
      <td colspan="3"><?=$material[0]->material_code; ?></td>
    </tr>
    <tr>
      <td colspan="4">&nbsp;</td>
    </tr>
  </tbody>
</table>
