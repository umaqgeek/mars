<div class="row">
   <div class="col-sm-5 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">Add Rule</h1>
      </div>
</div>
<div class="row">
<?=form_open('admin/addRuleProcess');?>
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
        ?>
        <option value="<?=$t->tool_code?>"><?=$t->tool_code?></option>
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
    <input type="text" class="form-control" name="rule_number" id="rule_number" placeholder="Rule Number">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Var1</label>
    <input type="text" class="form-control" id="var1" name="var1" placeholder="Var1">
  </div>
   <div class="form-group">
    <label for="exampleInputPassword1">Cond</label>
    <input type="text" class="form-control" id="cond" name="cond" placeholder="cond">
  </div>

   <div class="form-group">
    <label for="exampleInputPassword1">Var2</label>
    <input type="text" class="form-control" id="var2" name="var2" placeholder="Var2">
  </div>


  <div class="row">
    <div class="col-sm-3">
  <button type="submit" class="btn btn-default">Submit</button>
</div>
</div>
</form>
</div>
</div>