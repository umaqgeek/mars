
<?php

$ap_id = 0;
$ap_value = 0;
if ($ap) {
	$ap_id = $ap[0]->ap_id;
	$ap_value = $ap[0]->ap_value;
}

?>


<div class="row">
   <div class="col-sm-5 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">Edit Admissible Pressure</h1>
      </div>
</div>
<div class="row">
	<div class="col-sm-5 col-sm-offset-1 col-md-10 col-md-offset-1 main">
<?=form_open('admin/editAdmisPres');?>
  <div class="col-sm-6 col-sm-offset-2">
  <div class="form-group">
    <label for="exampleInputPassword1">Value</label>
    <input type="text" class="form-control" name="ap_value" id="ap_value" placeholder="Value" value="<?=$ap_value; ?>">
    <input type="hidden" class="form-control" name="ap_id" id="ap_id" value="<?=$ap_id; ?>">
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">Category</label>
    <input type="text" class="form-control" id="category_name" name="category_name" value="<?=$category[0]->category_name; ?>" readonly>
    <input type="hidden" class="form-control" name="category_id" id="category_id" value="<?=$category[0]->category_id; ?>">
  </div>

   <div class="form-group">
    <label for="exampleInputPassword1">Carcass Size</label>
    <input type="text" class="form-control" id="cwt_id" name="cwt_id" value="<?=$cwt_id; ?>" readonly>
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">Carcass Internal Ø (inches)</label>
    <input type="text" class="form-control" id="cid_id" name="cid_id" value="<?=$cid_id; ?>" readonly>
  </div>


  <div class="row">
    <div class="col-sm-3">
  <button type="submit" class="btn btn-default">Submit</button>
</div>
</div>
</form>
	</div>
</div>