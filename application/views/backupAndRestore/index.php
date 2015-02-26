
<div class="row"><div class="col-md-9 col-md-offset-2">
<h3>Backup and Restore</h3>
<hr />
<h4>Backup</h4>
<a href="<?=site_url('admin/backupSQL'); ?>" class="btn btn-default">Export</a>
<hr />
<h4>Restore</h4>
<form action="" method="post" enctype="multipart/form-data">
Choose the backup file (.sql): <input name="filesql" class="form-control" type="file">
<input name="" value="Upload and Restore" class="btn btn-default" type="submit">
</form>
<hr />
</div></div>