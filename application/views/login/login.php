<div class="container">
		<div class="row">
			<div class="col-lg-4 col-md-offset-4">

				<!-- check for the flashdata -->
				<?php
				if($this->session->flashdata('error')!="")
					echo $this->session->flashdata('error');
				elseif($this->session->flashdata('sucess')!="")
				echo $this->session->flashdata('sucess');
			
					$attributes = array('class' => 'form-signin', 'id' => 'login', 'method'=>'post', 'role'=>'form');

					echo form_open('login/authprocess', $attributes);
					?>
        <h2 class="form-signin-heading">Please sign in</h2>
        <input type="text" name="username" class="form-control" placeholder="Username" required autofocus>
        <input type="password" name="password" class="form-control" placeholder="Password" required>
        <label class="checkbox">
          <input type="checkbox" value="remember-me"> Remember me
        </label>
        <div class="row">
<div class="col-lg-4">
     <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
	</div>
	<div class="col-lg-4">
		<button class="btn btn-lg btn-info btn-block" type="button">Sign up</button>
        </div>
   
      </form>
		</div>
		<!-- Panels
		================================================== -->
		
		
	</div>
</div>
<!-- / of file welcome.php
