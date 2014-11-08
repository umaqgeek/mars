<?php 
foreach($css_files as $file): ?>
    <link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
 
<?php endforeach; ?>
<?php foreach($js_files as $file): ?>
 
    <script src="<?php echo $file; ?>"></script>
<?php endforeach;?>
 	<div class="row">
	  	<div class="col-sm-10 col-md-offset-2">
	 	<?=$output?>
	 	</div>
    </div>
