<script>
$(document).ready(function() {
       var table = $('#example2').DataTable();
});
</script>            
            
            <div class="row">
               <div class="col-sm-10">
                  <h2>Tool DIE</h2>
                  <div id="divDIE"><?=$divPIN; ?></div>
               </div>
            </div>   
            
            <div class="col-sm-10">
                              
              <table id="example2" class="display" cellspacing="0" width="100%" style="cursor:pointer;" border="1">
            	<thead>
                	<tr>
                        <td><strong>Parameter</strong></td>
                        <td><strong>Value</strong></td>
                    </tr>
                </thead>
                <tbody>
                	<?php for($p=3; $p<=10; $p++) { if( isset($printPINx[$p-3]) ) { ?>
                	<tr>
                    	<td>Param <?=$p; ?></td>
                        <td><?=$printPINx[$p-3]; ?></td>
                    </tr>
                    <?php } } ?>
                </tbody>
            </table>
              

<hr />
              </div>

<script>window.print();</script>