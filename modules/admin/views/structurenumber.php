<div class="row">
			<div class="col-lg-4 col-md-offset-4">

				<!-- check for the flashdata -->
				<?php
				
			
					$attributes = array('class' => 'form-signin', 'id' => 'login', 'method'=>'post', 'role'=>'form');

					echo form_open('admin/structurenum', $attributes);
					?>
        <h2 class="form-signin-heading">Please fill in the structure number</h2>
        <input type="text" name="structurenumber" class="form-control" placeholder="structurenumber" required autofocus>
       
        </label>
        <div class="row">
<div class="col-lg-4">
     <button class="btn btn-lg btn-primary btn-block" type="submit">Search</button>
	</div>

      </form>
		</div>
		<!-- Panels
		================================================== -->
		
		
	</div>
</div>