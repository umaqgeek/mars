
<script>
$(document).ready(function() {
       var table2 = $('#example2').DataTable();
       var table_other2 = $('#example_other2').DataTable();
	   
	   var valueBesar = '-';
	   
	   $('#example2 tbody').on( 'click', 'tr', function () {
			if ( $(this).hasClass('selected') ) {
               $(this).removeClass('selected');
           }
           else {
               table2.$('tr.selected').removeClass('selected');
               $(this).addClass('selected');
           }
		   
		   var value = $(this).attr('value').split('|');
		   valueBesar = value;
		   
		});
	   
	   var printPINx = [];
	   
	   $("#printDIE").click(function() {
			$.ajax({
				type: "POST",
				data: {
					valueBesar:valueBesar,
					minPIN:0,
					maxPIN:0,
					minDIE:'<?=$minimum_DIE; ?>',
					maxDIE:'<?=$maximum_DIE; ?>',
					divPIN:$("#divDIE").html(),
					printPINx:printPINx
				},
				url: "<?=site_url('admin/printPage'); ?>",
				success: function(data){
					var url="<?=site_url('admin/printPage/printDIE'); ?>";
					newwindow=window.open(url,'name','height=600,width=1000,scrollbars=1');
					//newwindow.focus();
				}
			});
		});
});
</script>

<?php 
//print_r($file_url_others);
if (!empty($file_url_others)) { 
	foreach ($file_url_others as $fuo) {
		if ($fuo->tool_code == 'DIE') {
			?>
            <div class="row">
               <div class="col-sm-10">
               
               <?php if(empty($nominal_type_results_DIE)) { ?>
                <div class="alert alert-warning alert-dismissible" role="alert">NO DATA FOUND IN MEX !!</div>
              <?php } ?>
               
                  <h2>Tool <?=$fuo->tool_code; ?></h2>
                  <div id="div<?=$fuo->tool_code; ?>">
                  <?php
				  	if (empty($nominal_type_results_DIE)) {
                     if(!empty($fuo->file_url))
                     { 
                       ?>
                  <img style="margin-top:2%" src="<?=base_url('assets/uploads/files/'.$fuo->file_url)?>" />
                  <?php
                     }
                     else
                     {
                       ?>
                  <div class="alert alert-warning alert-dismissible" role="alert">Image Not Found, or maybe not uploaded yet!</div>
                  <?php
                     }
					}
                     ?>
                  </div>
               </div>
            </div>   
            
            <?php if(!empty($nominal_type_results_DIE)) { ?>
            <div class="row">
               <div class="col-sm-12">
               		<h3>
                        Minimum ID DIE: <?=number_format($minimum_DIE, 2); ?><br />
                        Maximum ID DIE: <?=number_format($maximum_DIE, 2); ?>
                    </h3>
               </div>
            </div>
            <?php } ?>
            
            <div class="col-sm-10">
                              
			<?php if(!empty($nominal_type_results_DIE)) { ?>
            
              <table id="example2" class="display" cellspacing="0" width="100%" style="cursor:pointer;">
              <thead>
                  <tr>
                    <td>No.</td>
                    <td>ID</td>
                    <td>OD</td>
                    <td>HEAD</td>
                    <td>Drwg Name</td>
                    <td>WITH RING</td>
                    <td>WITH PIN/DIE SUPPORT</td>
                    <td>SUPPORT SIZE</td>
                  </tr>
               </thead>
               <tbody>
               	  <?php if(isset($nominal_type_results_DIE)) { $int = 1; foreach($nominal_type_results_DIE as $ntr) { ?>
                  <tr value="<?=$ntr->ID; ?>|<?=$ntr->OD; ?>|<?=$ntr->HEAD; ?>|<?=$ntr->DRAWING_NAME; ?>|<?=$ntr->WITH_RING; ?>|<?=$ntr->WITH_PIN_DIE_SUPPORT; ?>|<?=$ntr->SUPPORT_SIZE; ?>">
                    <td width="64"><?=$int++; ?></td>
                    <td width="64"><?=$ntr->ID; ?></td>
                    <td width="64"><?=$ntr->OD; ?></td>
                    <td width="64"><?=$ntr->HEAD; ?></td>
                    <td width="204"><?=$ntr->DRAWING_NAME; ?></td>
                    <td width="92"><?=$ntr->WITH_RING; ?></td>
                    <td width="160"><?=$ntr->WITH_PIN_DIE_SUPPORT; ?></td>
                    <td width="64"><?=$ntr->SUPPORT_SIZE; ?></td>
                  </tr>
                  <?php } } ?>
               </tbody>
              </table>

				<?php } else { ?>
                
                <table id="example_other2" class="display" cellspacing="0" width="100%" style="cursor:pointer;">
                    <thead>
                        <tr>
                            <th>Parameter</th>
                            <th>Value</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php for($p=3; $p<=10; $p++) { if( isset($paramDIE[$p-3]) ) { ?>
                        <tr>
                            <td>Param <?=$p; ?></td>
                            <td><?=$paramDIE[$p-3]; ?></td>
                        </tr>
                        <?php } } ?>
                    </tbody>
                </table>

<div class="row" style="margin-top:1%;">
    <div class="col-md-2">
        <button class="btn btn-lg btn-primary btn-block" name="print" type="button" id="printDIE">Print</button>
    </div>
</div>
                
                <?php } ?>

<hr />
              </div>

            <?php
		}
	} 
} 
?>