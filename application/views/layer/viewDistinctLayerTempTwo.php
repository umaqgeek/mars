 	<div class="row">
	  	<div class="col-sm-10 col-md-offset-2">

	 	<table class="table">
				<th>Rule Number</th>
	  			<th>Var1</th>
	  			<th>Var2</th> 
	  			<th>Condition</th> 
	  			<th>ØD</th>
	  			<th>ØB</th>
	  			<th>ØC</th>
	  			<th>E</th>
	  			<th>R</th>
	  			<th>ØF</th>
	  			<th>K</th>
	  			<th>P</th>
	  			<th>H</th>
	  			<th>L</th>

	  			<?php
	  			$x=1;
	  				foreach($results as $r)
	  				{
	  					?>
	  					<tr>
	  						<td <?=($x==3)?"style='color:blue'":""?>><?=$r->rule_number?></td>
	  						<td <?=($x==3)?"style='color:blue'":""?>><?=$r->var1?></td>
	  						<td>> &nbsp; <=</td>
	  						<td <?=($x==3)?"style='color:blue'":""?>><?=$r->var2?></td>
	  						
	  						<td <?=($x==3)?"style='color:blue'":""?>><?=$r->param1?></td>
	  						<td <?=($x==3)?"style='color:blue'":""?>><?=$r->param2?></td>
	  						<td <?=($x==3)?"style='color:blue'":""?>><?=$r->param3?></td>
	  						<td <?=($x==3)?"style='color:blue'":""?>><?=$r->param4?></td>
	  						<td <?=($x==3)?"style='color:blue'":""?>><?=$r->param5?></td>
	  						<td <?=($x==3)?"style='color:blue'":""?>><?=$r->param6?></td>
	  						<td <?=($x==3)?"style='color:blue'":""?>><?=$r->param7?></td>
	  						<td <?=($x==3)?"style='color:blue'":""?>><?=$r->param8?></td>
	  						<td <?=($x==3)?"style='color:blue'":""?>><?=$r->param9?></td>
	  						<td <?=($x==3)?"style='color:blue'":""?>><?=$r->param10?></td>
	  					</tr>
	  					<?php
	  					$x++;
	  				}
	  			?>
	 	</table>
	 	</div>
    </div>
     	<div class="row">
	  	<div class="col-sm-3 col-md-offset-5">
	  		 <a href="<?=site_url('admin/displayDistinctLayerTempThree')?>" class="btn btn-lg btn-primary btn-block">Next</a>
	  	</div>
	  </div>
