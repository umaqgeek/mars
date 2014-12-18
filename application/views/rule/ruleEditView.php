<div class="row">
   <div class="col-sm-5 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">Edit Rule</h1>
      </div>
</div>
<div class="row">
<?=form_open('admin/editRuleProcess');?>
<input type="hidden" name="rule_id" value="<?php echo $rules[0]->rule_id; ?>" />
  <div class="col-sm-6 col-sm-offset-2">
  <div class="form-group">
    <label for="exampleInputEmail1">Tool Code</label>
    <?php
    if(!empty($tools))
    {
      ?>
      <select name="tool_code" id="tool_code" class="form-control" >
      <?php
      foreach($tools as $t)
      {
		  $tool_code_edited = str_replace(' ', '', strtolower($t->tool_code));
        ?>
        <option value="<?=$tool_code_edited;?>" <?php if($rule_number==$tool_code_edited) { echo 'selected'; } ?>><?=$t->tool_code;?></option>
        <?php
      }
      ?>
    </select>
      <?php
    }
    ?>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Rule Number</label>
    <input type="text" class="form-control" name="rule_number3" id="rule_number3" placeholder="Rule Number" value="<?php echo $rule_number2; ?>" readonly="readonly">
    <input type="hidden" class="form-control" name="rule_number" id="rule_number" placeholder="Rule Number" value="<?php echo $rule_number.'_'.$rule_number2; ?>">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Var1</label>
    <input type="text" class="form-control" id="var1" name="var1" placeholder="Var1" value="<?php echo $rules[0]->var1; ?>">
  </div>

   <div class="form-group">
    <label for="exampleInputPassword1">Var2</label>
    <input type="text" class="form-control" id="var2" name="var2" placeholder="Var2" value="<?php echo $rules[0]->var2; ?>">
  </div>


  <div class="row">
    <div class="col-sm-3">
  <button type="submit" class="btn btn-default">Submit</button>
</div>
</div>
</form>
</div>
</div>