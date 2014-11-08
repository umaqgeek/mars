 <div class="container-fluid">
      <div class="row">
        
        <?=(!empty($sidebar))?$sidebar:""?>


        <div class="col-sm-5 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">Structure Number</h1>
           
           <div class="row">
            <div class="col-sm-5 col-sm-offset-3">
               <?php
                      $attributes = array('class' => 'form-signin', 'id' => 'login', 'method'=>'post', 'role'=>'form');

              echo form_open('admin/searchStructureNumber/add', $attributes);
              ?>
            <h2 class="form-signin-heading">Search Structure Number</h2>
            <input type="text" name="txtStructureNumber" class="form-control" placeholder="ST15261797" required autofocus>
          
            <div class="row">
            
            <div class="col-lg-6">
                 <button class="btn btn-lg btn-primary btn-block" type="submit">Search</button>
              </div>

          </form>
        </div>
      </div>

      </div><!--end row-->

    </div>