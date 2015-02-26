<script>
   $(document).ready(function() {
       var table = $('#example').DataTable();
       var table2 = $('#example2').DataTable();
   
   		$('#example tbody').on( 'click', 'tr', function () {
           if ( $(this).hasClass('selected') ) {
               $(this).removeClass('selected');
           }
           else {
               table.$('tr.selected').removeClass('selected');
               $(this).addClass('selected');
           }
		   var value = $(this).attr('value').split('|');
		   var strTemp = '';
		   for (i=0; i<value.length; i++) {
			   strTemp += value[i] + ', ';
		   }
		   $(".toolCodeBox").val(strTemp);
		});
   
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
      
      <div class="row">
               <div class="col-sm-12">
                  <h1 class="page-header">Tool Sheet</h1>
                  <h2>Tool DRAWING PIN</h2>
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
               	  <?php if(isset($nominal_type_results)) { $int = 1; foreach($nominal_type_results as $ntr) { ?>
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
              

<hr />

<?php 
if (!empty($file_url_others)) { 
	foreach ($file_url_others as $fuo) {
		//print_r($fuo);
?>
<div class="row">
               <div class="col-sm-12">
                  <h2>Tool <?=$fuo->tool_code; ?></h2>
                  <?php
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
                     ?>
               </div>
            </div>    
            <input type="text" value="" class="form-control toolCodeBox" placeholder="Result <?=$fuo->tool_code; ?>" /> 
<hr />
<?php } } ?>

      
   </div>
   <div class="row" style="margin-bottom:10%;">
      <div class="col-sm-1">
               </div>
   </div>
</div>