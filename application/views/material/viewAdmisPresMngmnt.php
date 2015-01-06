
<?php
foreach ($category as $cat) {
?>
<div class="row">
	<div class="col-md-10 col-md-offset-2">

<h4><?=$cat->category_name; ?></h4>
<table class="table">
	<tr>
    	<th colspan="2">Carcass</th>
        <th colspan="18">Carcass Internal Ø (inches)</th>
    </tr>
    <tr>
    	<th>Width</th>
        <th>Th.</th>
<?php for ($i=2; $i<=19; $i++) { ?>
		<th><?=$i; ?></th>
<?php } ?>
    </tr>
    
<?php 
if ($size) { 
	foreach ($size as $s) { 
		$si = $s->size_x;
		$si2 = explode('x', $si);
		for ($j=0; $j<sizeof($si2); $j++) {
			$si2[$j] = str_replace(' ', '', $si2[$j]);
		}
		if (sizeof($si2) == 2) {
			$width = ($si2[0] > $si2[1]) ? ($si2[0]) : ($si2[1]);
			$th = ($si2[0] <= $si2[1]) ? ($si2[0]) : ($si2[1]);
?>
	<tr>
    	<td><?=$width; ?></td>
        <td><?=$th; ?></td>
<?php 
			for ($i=2; $i<=19; $i++) { 
				$ap_value = $this->m_material->getAdmisPress($cat->category_id, $s->size_x, $i);
?>
		<td><a href="<?=site_url('admin/admisPresMngmntView/'.$cat->category_id.'/'.$s->size_x.'/'.$i.'/'); ?>"><?=$ap_value; ?></a></td>
<?php } ?>
    </tr>
<?php 
		}
	} 
} 
?>
    
</table>

    </div>
</div>
<hr />
<?php
}
?>