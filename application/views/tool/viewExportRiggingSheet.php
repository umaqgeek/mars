
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
                    <td colspan="2"><?=$rev; ?></td>
                  </tr>
                  <tr>
                    <td>Checked By</td>
                    <td><?=$checked_by; ?></td>
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
                    <td colspan="2"><?=$job_nrs; ?></td>
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
                    <td><?=$cable_ref; ?></td>
                  </tr>
                  <tr>
                    <td>Shackle</td>
                    <td>shackle_spec</td>
                    <td>shackle_max_load</td>
                    <td>3</td>
                    <td><?=$shackle_ref; ?></td>
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