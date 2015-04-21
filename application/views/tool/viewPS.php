
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
	$layer_name = $sess['layer_name'];
?>
      <div class="col-md-3">
         Layer Name : <?php echo $sess['layer_name']; ?>
      </div>
      <?php
}
?>
   </div>
</div>

<script>
$(document).ready(function() {
       var table = $('#example').DataTable();
       var table2 = $('#example2').DataTable();
       var table_other = $('#example_other').DataTable();
	   
	   var colsMex = [];
	   var valsMex = [];
	   for (i=0; i<13; i++) {
		   valsMex[i] = 0;
	   }
	   
	   <?php
	   if (!empty( $layer_ps_mex_column )) {
		   $i=0;
		   foreach ($layer_ps_mex_column as $lpmc) {
			   ?>
	   colsMex[<?=$i++; ?>] = '<?=$lpmc->lpmc_name; ?>';
			   <?php
		   }
	   }
	   ?>
	   
	   valsMex[7] = '<?=$minimum_PIN; ?>';
	   valsMex[8] = '<?=$maximum_PIN; ?>';
	   valsMex[9] = 0;
	   valsMex[10] = 0;
	   valsMex[11] = '<?=$minimum_DIE; ?>';
	   valsMex[12] = '<?=$maximum_DIE; ?>';
	   
	   	var valueBesar = '-';
		var minPIN = '<?=$minimum_PIN; ?>';
		var maxPIN = '<?=$maximum_PIN; ?>';
		var minDIE = '<?=$minimum_DIE; ?>';
		var maxDIE = '<?=$maximum_DIE; ?>';
		
		<?php if(empty($nominal_type_results_PIN)) { ?>
			<?php for($p=3; $p<=10; $p++) { if( isset($paramPIN[$p-3]) ) { ?>
		valsMex[<?=$p-3; ?>] = '<?=$paramPIN[$p-3]['value']; ?>';
		colsMex[<?=$p-3; ?>] = '<?=$paramPIN[$p-3]['param']; ?>';
			<?php } } ?>
		// minimum gap
		 strTemp = '<?=$this->my_func->getFormulaValue_PS($structure_number, $layer_name, 'GAP', 1); ?>';
		 pecahArr = strTemp.split(' ');
		 a = '';
		 for (i=0; i<pecahArr.length; i++) {
			 a += pecahArr[i] + ' ';
		 }
		 for (i=0; i<colsMex.length; i++) {
			 for (j=0; j<colsMex.length; j++) {
				 a = a.replace( colsMex[j] , valsMex[j] );
			 }
		 }
		 //alert( a );
		 a = a.replace('sqrt', 'Math.sqrt');
		 a = a.replace('pow', 'Math.pow');
		 $("#GAP_1").val( a +' = '+ eval(a) );
		 valsMex[9] = eval(a);
		 
		 // maximum gap
		 strTemp = '<?=$this->my_func->getFormulaValue_PS($structure_number, $layer_name, 'GAP', 2); ?>';
		 pecahArr = strTemp.split(' ');
		 a = '';
		 for (i=0; i<pecahArr.length; i++) {
			 a += pecahArr[i] + ' ';
		 }
		 for (i=0; i<colsMex.length; i++) {
			 for (j=0; j<colsMex.length; j++) {
				 a = a.replace( colsMex[j] , valsMex[j] );
			 }
		 }
		 //alert( a );
		 a = a.replace('sqrt', 'Math.sqrt');
		 a = a.replace('pow', 'Math.pow');
		 $("#GAP_2").val( a +' = '+ eval(a) );
		 valsMex[10] = eval(a);
		 
		 strTemp = '<?=$this->my_func->getFormulaValue_PS($structure_number, $layer_name, 'DIE', 1); ?>';
		 $("#DIE_1").val( strTemp );
		 strTemp = '<?=$this->my_func->getFormulaValue_PS($structure_number, $layer_name, 'DIE', 2); ?>';
		 $("#DIE_2").val( strTemp );
		 
		<?php } ?>
		
		$.ajax({
			  type: "POST",
			  data: {valsMex:valsMex, colsMex:colsMex},
			  url: "<?=site_url('admin/getPageDie'); ?>",
			  success: function(data){
				  $("#paparDie").html( data );
			  }
		  });


   		$('#example tbody').on( 'click', 'tr', function () {
           if ( $(this).hasClass('selected') ) {
               $(this).removeClass('selected');
           }
           else {
               table.$('tr.selected').removeClass('selected');
               $(this).addClass('selected');
           }
		   
		   var value = $(this).attr('value').split('|');
		   valueBesar = value;
		   
		   for (i=0; i<value.length; i++) {
			   valsMex[i] = value[i];
		   }
		   for (i=value.length; i<value.length+6; i++) {
			   valsMex[i] = 0;
		   }
		   
		   <?php
		   if (!empty( $layer_ps_mex_column )) {
			   $i=0;
			   foreach ($layer_ps_mex_column as $lpmc) {
				   ?>
		   colsMex[<?=$i++; ?>] = '<?=$lpmc->lpmc_name; ?>';
				   <?php
			   }
		   }
		   ?>
		   
		   valsMex[7] = '<?=$minimum_PIN; ?>';
		   valsMex[8] = '<?=$maximum_PIN; ?>';
		   valsMex[9] = 0;
		   valsMex[10] = 0;
		   valsMex[11] = '<?=$minimum_DIE; ?>';
		   valsMex[12] = '<?=$maximum_DIE; ?>';
		   
		   minPIN = '<?=$minimum_PIN; ?>';
		   maxPIN = '<?=$maximum_PIN; ?>';
		   minDIE = '<?=$minimum_DIE; ?>';
		   maxDIE = '<?=$maximum_DIE; ?>';
		   
		   // minimum gap
		   strTemp = '<?=$this->my_func->getFormulaValue_PS($structure_number, $layer_name, 'GAP', 1); ?>';
		   pecahArr = strTemp.split(' ');
		   a = '';
		   for (i=0; i<pecahArr.length; i++) {
			   a += pecahArr[i] + ' ';
		   }
		   for (i=0; i<colsMex.length; i++) {
			   for (j=0; j<colsMex.length; j++) {
				   a = a.replace( colsMex[j] , valsMex[j] );
			   }
		   }
		   //alert( a );
		   a = a.replace('sqrt', 'Math.sqrt');
		   a = a.replace('pow', 'Math.pow');
		   $("#GAP_1").val( a +' = '+ eval(a) );
		   valsMex[9] = eval(a);
		   
		   // maximum gap
		   strTemp = '<?=$this->my_func->getFormulaValue_PS($structure_number, $layer_name, 'GAP', 2); ?>';
		   pecahArr = strTemp.split(' ');
		   a = '';
		   for (i=0; i<pecahArr.length; i++) {
			   a += pecahArr[i] + ' ';
		   }
		   for (i=0; i<colsMex.length; i++) {
			   for (j=0; j<colsMex.length; j++) {
				   a = a.replace( colsMex[j] , valsMex[j] );
			   }
		   }
		   //alert( a );
		   a = a.replace('sqrt', 'Math.sqrt');
		   a = a.replace('pow', 'Math.pow');
		   $("#GAP_2").val( a +' = '+ eval(a) );
		   valsMex[10] = eval(a);
		   
		   strTemp = '<?=$this->my_func->getFormulaValue_PS($structure_number, $layer_name, 'DIE', 1); ?>';
		   $("#DIE_1").val( strTemp );
		   strTemp = '<?=$this->my_func->getFormulaValue_PS($structure_number, $layer_name, 'DIE', 2); ?>';
		   $("#DIE_2").val( strTemp );
		   
		   $.ajax({
				type: "POST",
   				data: {valsMex:valsMex, colsMex:colsMex},
   				url: "<?=site_url('admin/getPageDie'); ?>",
   				success: function(data){
     				$("#paparDie").html( data );
   				}
			});
		   
		});
		
		var printPINx = [];
		<?php for($p=3; $p<=10; $p++) { if( isset($paramPIN[$p-3]) ) { ?>
		printPINx[<?=($p-3); ?>] = ['<?=$paramPIN[$p-3]['param']; ?>', '<?=$paramPIN[$p-3]['value']; ?>'];
		<?php } } ?>
		
		$("#printPIN").click(function() {
			$.ajax({
				type: "POST",
				data: {
					valueBesar:valueBesar,
					minPIN:minPIN,
					maxPIN:maxPIN,
					minDIE:minDIE,
					maxDIE:maxDIE,
					divPIN:$("#divPIN").html(),
					printPINx:printPINx
				},
				url: "<?=site_url('admin/printPage'); ?>",
				success: function(data){
					var url="<?=site_url('admin/printPage/printPIN'); ?>";
					newwindow=window.open(url,'name','height=600,width=1000,scrollbars=1');
					//newwindow.focus();
				}
			});
		});
   
});
   
</script>

 <div class="row">
    	<div class="col-md-2 col-md-offset-2 main">
    		<button class="btn btn-lg btn-primary btn-block" name="search" type="button" onclick="history.back(-1);">Back</button>
        </div>
    </div>

<div class="row">
   <div class="col-sm-10 col-sm-offset-2">
      
      <?php if(empty($nominal_type_results_PIN)) { ?>
      	<div class="alert alert-warning alert-dismissible" role="alert">NO DATA FOUND IN MEX !!</div>
      <?php } ?>
      
      <div class="row">
               <div class="col-sm-12">
                  <h1 class="page-header">Tool Sheet</h1>
                  <h2>Tool DRAWING PIN</h2>
                  <div id="divPIN">
                  <?php
					if (empty($nominal_type_results_PIN)) {
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
					}
                     ?>
                  </div>
               </div>
            </div>
            
            <?php if(!empty($nominal_type_results_PIN)) { ?>
            <div class="row">
               <div class="col-sm-12">
               		<h3>
                        Minimum OD PIN: <?=number_format($minimum_PIN, 2); ?><br />
                        Maximum OD PIN: <?=number_format($maximum_PIN, 2); ?>
                    </h3>
               </div>
            </div>
            <?php } ?>
            
            <!--end-->
            <div class="col-sm-10">

			<?php if(!empty($nominal_type_results_PIN)) { ?>
                              
                <em style="color:#06F; font-size:large;">Please select an item from the list below:-</em>
              <table id="example" class="display" cellspacing="0" width="100%" style="cursor:pointer;">
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
               	  <?php if(!empty($nominal_type_results_PIN)) { $int = 1; foreach($nominal_type_results_PIN as $ntr) { ?>
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
            
			<table id="example_other" class="display" cellspacing="0" width="100%" style="cursor:pointer;">
            	<thead>
                	<tr>
                    	<th>No.</th>
                        <th>Parameter</th>
                        <th>Value</th>
                    </tr>
                </thead>
                <tbody>
                	<?php for($p=3; $p<=10; $p++) { if( isset($paramPIN[$p-3]) ) { ?>
                	<tr>
                    	<td><?=$p-2; ?></td>
                    	<td><?=$paramPIN[$p-3]['param']; ?></td>
                        <td><?=$paramPIN[$p-3]['value']; ?></td>
                    </tr>
                    <?php } } ?>
                </tbody>
            </table>
            
<div class="row" style="margin-top:1%;">
    <div class="col-md-2">
        <button class="btn btn-lg btn-primary btn-block" name="print" type="button" id="printPIN">Print</button>
    </div>
</div>
            
            <?php } ?>

<hr />
              </div>

<?php 
if (!empty($file_url_others)) { 
	foreach ($file_url_others as $fuo) {
		if ($fuo->tool_code == 'GAP') {
		//print_r($fuo);
?>
<div class="row">
               <div class="col-sm-10">
                  <h2>Tool <?=$fuo->tool_code; ?></h2>
               </div>
            </div>   
            
            <div class="row">
               <div class="col-sm-10">
               		<h3>
                        Minimum <?=$fuo->tool_code; ?>: <input readonly="readonly" type="text" value="" class="form-control toolCodeBox" id="<?=$fuo->tool_code; ?>_1" placeholder="Result <?=$fuo->tool_code; ?>" />
            <input type="hidden" value="<?=$fuo->tool_code; ?>" class="toolHide" /><br />
                        Maximum <?=$fuo->tool_code; ?>: <input readonly="readonly" type="text" value="" class="form-control toolCodeBox" id="<?=$fuo->tool_code; ?>_2" placeholder="Result <?=$fuo->tool_code; ?>" />
            <input type="hidden" value="<?=$fuo->tool_code; ?>" class="toolHide" />
                    </h3>
               </div>
            </div>

<hr />
<?php 
		}
	} 
} 
?>
<div id="paparDie">
</div>

   <div class="row" style="margin-bottom:10%;">
      <div class="col-sm-1">
               </div>
   </div>
</div>