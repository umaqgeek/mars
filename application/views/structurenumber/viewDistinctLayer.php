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
		   var val2 = val.split('seperator');
		   //alert(val2[0]);
		   if (val2[0] == 'INTERLOCKED CARCASS' || val2[0] == 'PRESSURE SHEATH') {
			   var base_url="<?=site_url()?>";
	
				   $.ajax({
					  'url':base_url+'/admin/ajaxDisplayTool/'+val,
					  'success':function(response){
				
						window.location.href = base_url+'/admin/DisplayTool/';
					 }
				});
		   /*} else if (val2[0] == 'PRESSURE SHEATH') {
			   
			   var base_url="<?=site_url()?>";
	
				   $.ajax({
					  'url':base_url+'/admin/ajaxDisplayTool/'+val,
					  'success':function(response){
				
						window.location.href = base_url+'/admin/DisplayPressureSheath/';
					 }
				});
			   */
		   } else {
			   alert('That layer is not ready yet!');
			   $(this).removeClass('selected');
		   }


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
    return confirm("Are you sure you want to choose this layer?");
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
		  	
            $structure_number="";
            $project_name="";
            $project_number="";
           if(!empty($projects))
           {

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

         </div>
       </div>
    <div class="row">
       
        <div class="col-sm-5 col-sm-offset-3 col-md-10 col-md-offset-2 main">
         <?php
            if($this->session->flashdata('project_add_sucess')){
            ?>
            <div class="alert alert-success alert-dismissible" role="alert"><?=$this->session->flashdata('project_add_sucess')?></div>
            <?php
            }
            elseif($this->session->flashdata('project_add_failed'))
            {
                 ?>
            <div class="alert alert-fail alert-dismissible" role="alert"><?=$this->session->flashdata('project_add_failed')?></div>
            <?php
            }
        ?>
          
          <h1 class="page-header">Select Layer</h1>
      </div>

    </div>
  
  
    <div class="row">

        <div class="col-sm-1">
              <?=(!empty($sidebar))?$sidebar:""?>
      </div>

      <div id="hasil" class="col-sm-10 col-sm-offset-2">

         <table id="example" class="display" cellspacing="0" width="100%">
        <thead>
            <tr>
               
                <th>Layer Name</th>
                <th>Id Nom</th>
              
            </tr>
        </thead>


 
        <tbody>
            <?php
            //get the data
          $value="";
            foreach($layers as $l){
                $value=$l->layer_name.'seperator'.$l->diainter;
                ?>
                <tr value="<?=$value?>">
                    <td><?=$l->layer_name?></td>

                        <td><?=$l->diainter?></td>
                       <?php
                         }
                       
                        ?>
                </tr>
               
           
        </tbody>
    </table>
      </div>

    </div>

    </div>

