 <div class="container-fluid">
      <div class="row">
        
        <?=(!empty($sidebar))?$sidebar:""?>


        <div class="col-sm-5 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">Select Tool</h1>
           
           <div class="row">
            <div class="col-sm-5 col-sm-offset-3">
               <?php
                      $attributes = array('class' => 'form-signin', 'id' => 'login', 'method'=>'post', 'role'=>'form');

              echo form_open('admin/ruleManagement', $attributes);
              ?>
            <h2 class="form-signin-heading">Select Tool to see its Rules</h2>
            <select name="tool_id" class="form-control">
            	<?php
					foreach($rules as $rule)
					{
						?>
						  <option value="<?=$rule->tool_id?>"><?=$rule->tool_code?></option>
						<?php
					}
            	?>
		
            </select>
           
            
      </div>

      </div><!--end row-->

    </div>
</div>

<div class="row">
            
            <div class="col-lg-5 col-sm-offset-4">
                 <button class="btn btn-lg btn-primary btn-block" type="submit">Search</button>
              </div>

          </form>
        </div>