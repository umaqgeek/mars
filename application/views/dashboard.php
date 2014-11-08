 <div class="container-fluid">
      <div class="row">
         <?=(!empty($sidebar))?$sidebar:""?>

        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">Dashboard</h1>

          <div class="row">

             <?php

            if($this->session->userdata('role_id')==1){
                ?>
                          
             <div class="col-sm-3">
              <a type="button" href="<?=site_url('admin/toolManagement')?>" class="btn btn-primary">Tool Management</a>

            </div>
            <div class="col-sm-3">
              <a type="button" href="<?=site_url('admin/materialManagement')?>" class="btn btn-primary">Material Management</a>
            </div>
            
          </div>
          <div class="row" style="height:30px;">

          </div>
          <div class="row">
             <div class="col-sm-3">
              <a type="button" href="<?=site_url('admin/importedManagement')?>" class="btn btn-primary">Imported Data Management</a>
            </div>
            <div class="col-sm-3">
              <a type="button" href="<?=site_url('admin/layerToolManagement')?>" class="btn btn-primary">Layer Tool Management</a>
            </div>
            <div class="col-sm-3">
              <a type="button" href="<?=site_url('admin/ruleManagement')?>" class="btn btn-primary">Rule Management</a>
            </div>
          </div>

                <?php
                 }else
                 {
                 ?>
  <div class="col-sm-3">

           <a type="button" href="<?=site_url('admin/structureNumber')?>" class="btn btn-primary">Tool Sheet</a>
           
            </div>
                 <?php
                 }


           ?>


            
      </div>
    </div>