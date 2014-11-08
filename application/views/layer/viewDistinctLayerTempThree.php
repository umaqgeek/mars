 	<div class="row">
	  	<div class="col-sm-10 col-md-offset-4">
	  		<img style="width:60%; height:60%;" src="<?=site_url('assets/uploads/mandrel_1.png')?>" />
	  	</div>
	  </div>
<div class="row">
	  	<div class="col-sm-10 col-md-offset-2">

	  	
	  		<table class="table">
	  			<tr>
	  			<th>Parameter</th>
	  			<th>Nominal</th>
	  			<th>Tol -</th>
	  			<th>Tol +</th>
	  			<th>&nbsp;</th>
	  		</tr>
	  			<tr>
	  				<th>ØD</th>
	  				<td>151.18</td>
	  				<td>-0.2</td>
	  				<td>0</td>
	  				<td>Rounded to closest 0.1mm</td>
	  			</tr>

	  			<tr>
	  				<th>ØB</th>
	  				<td>245</td>
	  				<td>-</td>
	  				<td>-</td>
	  				<td>Rounded to closest 1mm</td>
	  			</tr>

	  			<tr>
	  				<th>ØC</th>
	  				<td>275</td>
	  				<td>-</td>
	  				<td>-</td>
	  				
	  			</tr>

	  			<tr>
	  				<th>ØE</th>
	  				<td>111.18</td>
	  				<td>-0.2</td>
	  				<td>0</td>
	  				
	  			</tr>

	  			<tr>
	  				<th>ØF</th>
	  				<td>18</td>
	  				<td>-3</td>
	  				<td>3</td>
	  				
	  			</tr>

	  			<tr>
	  				<th>K</th>
	  				<td>22</td>
	  				<td>-</td>
	  				<td>-</td>
	  				
	  			</tr>

	  			<tr>
	  				<th>H</th>
	  				<td>30</td>
	  				<td>-</td>
	  				<td>-</td>
	  				
	  			</tr>

	  			<tr>
	  				<th>P</th>
	  				<td>352</td>
	  				<td>-</td>
	  				<td>-</td>
	  				
	  			</tr>

	  			<tr>
	  				<th>L</th>
	  				<td>160</td>
	  				<td>-5</td>
	  				<td>5</td>
	  			
	  			</tr>
	  		</table>

	  	</div>

	  </div>
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
	  	<div class="col-sm-10 col-md-offset-4">
	  		<img style="width:60%; height:60%;" src="<?=site_url('assets/uploads/mandrel_2.png')?>" />
	  	</div>
	  </div>
