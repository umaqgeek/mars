
<script>
$(document).ready(function() {
       var table = $('#example').DataTable();
});
</script>

<div class="row">
   <div class="col-sm-10 col-sm-offset-2">
      
      <div class="row">
               <div class="col-sm-12">
                  <h1 class="page-header">Tool Sheet</h1>
                  <h2>Tool DRAWING PIN</h2>
                  <div id="divPIN"><?=$divPIN; ?></div>
               </div>
            </div>
            
            <!--end-->
            <div class="col-sm-10">
                              
               <table id="example" class="display" cellspacing="0" width="100%" style="cursor:pointer;" border="1">
            	<thead>
                	<tr>
                    	<td><strong>No.</strong></td>
                        <td><strong>Parameter</strong></td>
                        <td><strong>Value</strong></td>
                    </tr>
                </thead>
                <tbody>
                	<?php for($p=3; $p<=10; $p++) { if( isset($printPINx[$p-3]) ) { ?>
                	<tr>
                    	<td><?=$p-2; ?></td>
                        <td><?=$printPINx[$p-3][0]; ?></td>
                        <td><?=$printPINx[$p-3][1]; ?></td>
                    </tr>
                    <?php } } ?>
                </tbody>
            </table>


<hr />
</div></div></div>

<script>window.print();</script>