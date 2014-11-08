<?php 
/*
foreach($css_files as $file): ?>
    <link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
 
<?php endforeach; ?>
<?php foreach($js_files as $file): ?>
 
    <script src="<?php echo $file; ?>"></script>
<?php endforeach; */?>


    <div class="row">
	  	<div class="col-sm-10 col-md-offset-2">
	  		<table class="table">
	  			<th>Layer Name</th>
	  			<th>Material</th>
	  			<th>diaintercouche</th> 
	  			<th>diaintercouchetolinf</th> 
	  			<th>diaintercouchetolsup</th>
	  			<th>diaextercouche</th> 
	  			<th>diaextercouchetolsup</th> 
	  			<th>diaxtercouchetolinf</th>

	        <?php  
	      $layer_name="";
	      $additionalColNames=array();

	        //print_r($results); die();
	      $x=0;
	        foreach($results as $key)
	        {
	        	
	        	echo "<tr>";
	        	
	        	foreach($key as $k=>$v)
	        	{

	        		if($k=="layer_name")
	        		{
	        			$layer_name=$v;
	        		}

	        		?>
	        		<td <?=($x==0)?"style='color:blue'":""?> ><?=$v?></td>
	        		<?php
	        		$codemp=$this->m_layer->getCorrespondingMaterial($structure_number,$layer_name);
	        		
	        		foreach($codemp as $c)
	        		{
						
						
						foreach($c as $ck=>$cv)
						{
							?>
	   					<td <?=($x==0)?"style='color:blue'":""?>><?=$cv?></td>
	   					<?php
						}

	        		}
	        		
	        		$x++;
	        	}
	        	echo "</tr>";
	        }

	         ?>
	     </table>
	 	</div>
    </div>

     <div class="row">
	  	<div class="col-sm-5 col-md-offset-4">
	  		 <a href="<?=site_url('admin/displayDistinctLayerTempTwo')?>" class="btn btn-lg btn-primary btn-block">Next</a>
	  	</div>
	  </div>
    
 