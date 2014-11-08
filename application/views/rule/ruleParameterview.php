<?php 
foreach($css_files as $file): ?>
    <link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
 
<?php endforeach; ?>
<?php foreach($js_files as $file): ?>
 
    <script src="<?php echo $file; ?>"></script>
<?php endforeach;?>
 <div class="row">
       
        <div class="col-sm-5 col-sm-offset-3 col-md-10 col-md-offset-2 main">
         <?php
            if($this->session->flashdata('param_add_sucess')){
            ?>
            <div class="alert alert-success alert-dismissible" role="alert"><?=$this->session->flashdata('rule_add_sucess')?></div>
            <?php
            }
            elseif($this->session->flashdata('param_add_fail'))
            {
            ?>
            <div class="alert alert-danger alert-dismissible" role="alert"><?=$this->session->flashdata('param_add_fail')?></div>
            <?php
            
            }
        ?>
          
          <h1 class="page-header">Parameter Management</h1>
      </div>

    </div>
 	<div class="row">
	  	<div class="col-sm-10 col-md-offset-2">
	 	<?=$output?>
	 	</div>
    </div>
