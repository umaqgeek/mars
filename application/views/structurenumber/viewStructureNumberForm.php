<script>
$(document).ready(function() {
/*
var site_url="<?=site_url()?>";
$("#addproject").click(function(){

   $.post( site_url+"/admin/addProjectDirect", function( data ) {
  
});
});*/
} );

function confirmation() {
    return confirm("Are you sure you want to choose this Project?");
}
</script>
 <div class="container-fluid">
      <div class="row">
        
       

  <div class="row">
       
        <div class="col-sm-5 col-sm-offset-3 col-md-10 col-md-offset-2 main">
         <?php
          if($this->session->flashdata('no_layer_or_tool'))
            {
                 ?>
            <div class="alert alert-fail alert-dismissible" role="alert"><?=$this->session->flashdata('no_layer_or_tool')?></div>
            <?php
            }
        ?>

      </div>

    </div>
     <?=(!empty($sidebar))?$sidebar:""?>

        <div class="col-sm-5 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">Projects</h1>
           
           <div class="row">
               <div class="col-sm-5 col-sm-offset-3">
                  <h2 class="form-signin-heading">Enter Structure Number</h2>
                </div>
            <div class="col-sm-4 col-sm-offset-3">
               <?php
                      $attributes = array('class' => 'form-signin', 'id' => 'login', 'method'=>'post', 'role'=>'form');

            //  echo form_open('admin/searchStructureNumber/add', $attributes); lama
                      echo form_open('admin/addProjectView', $attributes);
              ?>
      
            <input type="text" name="txtStructureNumber" class="form-control" placeholder="ST15261797" required autofocus>
          
            <div class="row">
            
            <div class="col-lg-6 col-sm-offset-3">
                 <button class="btn btn-lg btn-primary btn-block" name="search" type="submit">Search</button>
                   <button class="btn btn-lg btn-info btn-block" name="addproject" type="submit">Add Project</button>
              </div>

          </form>
        </div>
      </div>

      </div>
       </div>
     </div>


     

</div><!--end container fluid-->

