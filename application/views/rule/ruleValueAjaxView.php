<script>
$( document ).ready(function() {

var base_url="<?=site_url()?>";
var id="<?=$primary_key?>";

	   $.ajax({
	      'url':base_url+'/admin/ajaxGetRuleValue/'+$("#field-pio_id").val()+'/'+id,
	      'success':function(response){
	        //$("#rp_value").value(response);
				//console.log(response);
	        	$('#rp_pre_value_input_box').html(response);

	            // var input = $('<input type=\'text\' />');
	             // $('#crudForm').append(input);
	      }
	   });

	 $("#field-pio_id").change(function(){
		var base_url="<?=site_url()?>";
		var id="<?=$primary_key?>";
	   $.ajax({
	      'url':base_url+'/admin/ajaxGetRuleValue/'+$("#field-pio_id").val()+'/'+id,
	      'success':function(response){
	        //$("#rp_value").value(response);
				//console.log(response);
	        	$('#rp_pre_value_input_box').html(response);
	            // var input = $('<input type=\'text\' />');
	             // $('#crudForm').append(input);
	      }
	   });

	});
});

</script>