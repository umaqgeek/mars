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
           //continue process
           //return the value
           var val = $(this).attr('value');
      
           var base_url="<?=site_url()?>";
        
               $.ajax({
         // 'url':base_url+'/admin/ajaxDisplayToolSheetDirect/'+val,
          'url':base_url+'/admin/addProjectAjax/'+val,
          'success':function(response){
             window.location.href = base_url+'/admin/displayLayerDirect/';
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
    return confirm("Are you sure you want to choose this Project?");
}
</script>
 <div class="container-fluid">
 
 	<div class="row">
    	<div class="col-md-2 col-md-offset-2 main">
    		<button class="btn btn-lg btn-primary btn-block" name="search" type="button" onclick="history.back(-1);">Back</button>
        </div>
    </div>

   <div class="row">
         <div class="col-sm-5 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          
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

           

         </div>
       </div>
      <div class="row">
         <div class="col-sm-5 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          

   
        <?=(!empty($sidebar))?$sidebar:""?>

         <?php
           if(!empty($projects))
           {
            ?>
             <h1 class="page-header">Projects</h1>
              <div class="row">

            <div class="col-sm-12">
        
    <table id="example" class="display" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>Structure Number</th>
                <th>Project Name</th>
                <th>Project Number</th>
                <th>Transaction Number</th>
               <th>Transaction Date</th>
                <th>Creator</th>
              
            </tr>
        </thead>

        <tbody>
            <?php
                  foreach($projects as $r)
                  {
                    //get the transaction id from these parameters

                   // $transaction_id=$this->my_func->getProjectTransacId($r);

                    ?>
                     <tr value="<?=$r->transaction_id?>">
                        <td><?=$r->structure_number?></td>
                      <td><?=$r->project_name?></td>
                       <td><?=$r->project_number?></td>
                       <td><?=$r->transaction_id?></td>
                       <td><?=date('d F Y',$r->transaction_id)?></td>
                        <td><?=$r->fullname?> (<?=$r->username?>)</td>
                      
                          </tr>
                    <?php
                  }

                  ?>
                 
        </tbody>
    </table>
        </div>


      </div>
            <?php
           }
           else
           {
            ?>
            <h1 class="page-header">Add Project</h1>
           
           <div class="row">
            <div class="col-sm-5 col-sm-offset-3">
               <?php
                      $attributes = array('class' => 'form-signin', 'id' => 'login', 'method'=>'post', 'role'=>'form');

                      echo form_open('admin/addProject', $attributes);
              ?>
            <h3 class="form-signin-heading"><?=$structure_number?></h3>
             <input type="hidden" name="structure_number" value="<?=$structure_number?>">
            
             <input type="text" name="project_name" class="form-control" placeholder="Insert Project Name" autofocus required>
            <input type="text" name="project_number" class="form-control" placeholder="Insert Project Number" required>
            <input type="text" name="section_number" class="form-control" placeholder="Insert Section Number" required>
            <input type="text" name="plf_length" class="form-control" placeholder="Insert Plf Length" required>
            <input type="text" name="overlength" class="form-control" placeholder="Insert Overlength" required>
            <div class="row">
            
            <div class="col-lg-6 col-sm-offset-3">
                 <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
              </div>

              </form>
            </div>
          </div>

          </div><!--end row-->
            <?php
           }

           ?>

        </div>