<?php $this->load->view('template/header_datatable'); ?>
<script>
    $(document).ready(function() {
        var table1 = $('#example').DataTable();

        var table3 = $('#example3').DataTable();


        // var awal = $('#field-rp_pre_value').data('val',  $('#field-rp_pre_value').val() );
        // alert(awal.val());
        /* $('#field-rp_pre_value').keyup(function () { 
  
       $('#field-rp_post_value').val($('#field-rp_pre_value').val());
      //$("#field-rp_post_value").text(masukan);
     //  $('#field-rp_pre_value').val($('#field-rp_pre_value').val() + val);
           // $('#field-rp_post_value').val($('#field-rp_post_value').val() + val);
          // $('#formula').append("this text was appended");
       $('#field-rp_formula').val($('#field-rp_formula').val()+$('#field-rp_pre_value').val());
    });

*/

        $("#clearformula").click(function() {

            $('#field-rp_pre_value').attr('value', '');
            $('#field-rp_post_value').attr('value', '');
            $('#field-rp_formula').attr('value', '');
			$('#field-rp_pre_value').val('');
            $('#field-rp_post_value').val('');
            $('#field-rp_formula').val('');
            $('#formula').attr('value', '');
            $('#formula').val('');
        });
		
		$("#addnompitch").click(function() {
										 
			var nom_pitch = 'nom_pitch';

            if ($('#formula').val() != '') {
				$('#field-rp_pre_value').val($('#field-rp_pre_value').val() + ' ' + nom_pitch);
                $('#field-rp_post_value').val($('#field-rp_post_value').val() + ' ' + nom_pitch);
                $('#field-rp_formula').val($('#field-rp_formula').val() + ' ' + nom_pitch);
                $('#formula').val($('#formula').val() + ' ' + nom_pitch);
			} else {
				$('#field-rp_pre_value').val(nom_pitch);
                $('#field-rp_post_value').val(nom_pitch);
                $('#field-rp_formula').val(nom_pitch);
                $('#formula').val(nom_pitch);
			}
        });
		
		$('#example tbody').on('click', 'tr', function() {
            if ($(this).hasClass('selected')) {
                $(this).removeClass('selected');
            } else {
                table1.$('tr.selected').removeClass('selected');
                $(this).addClass('selected');
            }

            //if(confirmation()==true)
            //{
            //continue process
            //return the value
            var val = $(this).attr('value');
            var result = val.split('%');
            var nc_id = result[0];
            var layer_name = result[1];
            var nc_name = result[2];
            var base_url = "<?=site_url()?>";

            //get the value of nominal_column base on layer name
            //and save it to the hidden field
            $.ajax({
                'url': base_url + '/admin/ajaxGetNominalColumnValue/' + nc_name + '/' + layer_name,
                'success': function(response) {

                    //write to the value #rp_pre_value


                    if ($('#formula').val() != '') {
                        // $('#field-rp_pre_value').val($('#field-rp_pre_value').val() + nc_name);
                        $('#field-rp_pre_value').val($('#field-rp_pre_value').val() + ' ' + nc_name);
                        $('#field-rp_post_value').val($('#field-rp_post_value').val() + ' ' + nc_name);
                        $('#field-rp_formula').val($('#field-rp_formula').val() + ' ' + nc_name);
                        $('#formula').val($('#formula').val() + ' ' + nc_name);

                    } else {
                        //$('#field-rp_pre_value').val(nc_name);
                        $('#field-rp_pre_value').val(nc_name);
                        $('#field-rp_post_value').val(nc_name);
                        $('#field-rp_formula').val(nc_name);
                        $('#formula').val(nc_name);
                    }


                }
            });

            //}
            // else
            // {
            //   $(this).removeClass('selected');
            //}

        });

        $('#button').click(function() {
            table2.row('.selected').remove().draw(false);
        });
		
		$('#add_number').click(function() {
			if ($('#number').val() != '') {
				var num = $('#number').val();
				if ($('#formula').val() != '') {
					//write to the value #rp_pre_value
					$('#field-rp_pre_value').val($('#field-rp_pre_value').val() + ' ' + num);
					$('#field-rp_post_value').val($('#field-rp_post_value').val() + ' ' + num);
					$('#field-rp_formula').val($('#field-rp_formula').val() + ' ' + num);
					$('#formula').val($('#formula').val() + ' ' + num);
				} else {
					//write to the value #rp_pre_value
					$('#field-rp_pre_value').val(num);
					$('#field-rp_post_value').val(num);
					$('#field-rp_formula').val(num);
					$('#formula').val(num);
				}
			} else {
				alert('Insert some number!');
			}
		});

        $('#example2 tbody').on('click', 'button', function() {



            //continue process
            //return the value
            var val = $(this).attr('value');
			
			//alert('|'+$('#field-rp_pre_value').val()+'|'+val+'|');

            var base_url = "<?=site_url()?>";

			if ($('#formula').val() != '') {
				//write to the value #rp_pre_value
				$('#field-rp_pre_value').val($('#field-rp_pre_value').val() + ' ' + val);
				$('#field-rp_post_value').val($('#field-rp_post_value').val() + ' ' + val);
				$('#field-rp_formula').val($('#field-rp_formula').val() + ' ' + val);
				$('#formula').val($('#formula').val() + ' ' + val);
			} else {
				//write to the value #rp_pre_value
				$('#field-rp_pre_value').val(val);
				$('#field-rp_post_value').val(val);
				$('#field-rp_formula').val(val);
				$('#formula').val(val);
			}



        });


        $('#example3 tbody').on('click', 'tr', function() {
            if ($(this).hasClass('selected')) {
                $(this).removeClass('selected');
            } else {
                table3.$('tr.selected').removeClass('selected');
                $(this).addClass('selected');
            }


            //continue process
            //return the value
            var val = $(this).attr('value');
            var result = val.split('%');
            var rp_id = result[0];
            var param_code = result[1];
            var param_value = result[2];
			var tool_id = result[3];
            var base_url = "<?=site_url()?>";


            //write to the value #rp_pre_value
            if ($('#formula').val() != '') {
                //$('#field-rp_pre_value').val($('#field-rp_pre_value').val() + param_code);
                $('#field-rp_pre_value').val($('#field-rp_pre_value').val() + ' ' + 'TOOL_'+tool_id+'_'+param_code);
                $('#field-rp_post_value').val($('#field-rp_post_value').val() + ' ' + 'TOOL_'+tool_id+'_'+param_code);
                $('#field-rp_formula').val($('#field-rp_formula').val() + ' ' + 'TOOL_'+tool_id+'_'+param_code);
                $('#formula').val($('#formula').val() + ' ' + 'TOOL_'+tool_id+'_'+param_code);
            } else {
                //$('#field-rp_pre_value').val(param_code);
                $('#field-rp_pre_value').val('TOOL_'+tool_id+'_'+param_code);
                $('#field-rp_post_value').val('TOOL_'+tool_id+'_'+param_code);
                $('#field-rp_formula').val('TOOL_'+tool_id+'_'+param_code);
                $('#formula').val('TOOL_'+tool_id+'_'+param_code);
            }



        });

    });

    function confirmation() {
        return confirm("Are you sure you want to select this ?");
    }
</script>
<div class="row">
    <div class="col-sm-12">
        <input type="text" id="formula" name="formula" value="<?=$formula?>" disabled="disabled" placeholder="formula is here" />
        <!-- <input type="text" id="field-rp_formula" name="rp_formula" disabled="disabled" placeholder="formula is here"/>-->
    </div>
</div>
<div class="row">
    <div class="col-sm-12">

        <?php /*foreach($hasil as $h=>$hh) { echo "
        <input type='text' placeholder='formula value' readonly='readonly' id='field-rp_pre_value' name='rp_pre_value' value='".$hh->rp_pre_value."' />"; } foreach($result as $r=>$v) { echo "
        <input type='hidden' id='field-rule_id' value='".$v->rule_id."' name='rule_id' />"; }*/ ?>

        <a id="clearformula" href="#!">Clear Formula</a>&nbsp;
        <a id="addnompitch" href="#!">Add Nom Pitch</a>
    </div>
</div>
<div class="row" style="margin-top:5%">
</div>
<div class="row">
    <div class="col-sm-3">

        <table id="example" class="display" cellspacing="0" width="100%">
            <thead>
                <tr>

                    <th>Nominal Column</th>


                </tr>
            </thead>

            <tbody>

                <?php foreach($nominal_columns as $r) { ?>
                <tr value="<?=$r->nc_id?>%<?=$layer_name?>%<?=$r->nc_name?>">
                    <td>
                        <?=$r->nc_name?></td>

                </tr>
                <?php } ?>

            </tbody>
        </table>
    </div>

    <!--calculator -->
    <div class="col-sm-3">
        <h3>Numbers and Operators</h3>
        <input type="text" id="number" class="form-control" placeholder="Insert number here" style="width:70%; height:10%;" />
        <button type="button" class="btn btn-default" id="add_number">Add</button>
        <table id="example2" width="90%">
            <tr>
                
                <td>
                    <!-- Standard button -->
                    <button style="width:100%" value="/" type="button" class="btn btn-default">/</button>
                </td>
            </tr>
            <tr>
                
                <td>
                    <!-- Standard button -->
                    <button style="width:100%" value="*" type="button" class="btn btn-default">*</button>
                </td>
            </tr>
            <tr>
                
                <td>
                    <!-- Standard button -->
                    <button style="width:100%" value="-" type="button" class="btn btn-default">-</button>
                </td>
            </tr>
            <tr>
                
                <td>
                    <!-- Standard button -->
                    <button style="width:100%" value="+" type="button" class="btn btn-default">+</button>
                </td>

            </tr>
            <tr>
                
                <td>
                    <!-- Standard button -->
                    <button style="width:100%" value="(" type="button" class="btn btn-default">(</button>
                </td>

            </tr>
            <tr>
                
                <td>
                    <!-- Standard button -->
                    <button style="width:100%" value=")" type="button" class="btn btn-default">)</button>
                </td>

            </tr>
        </table>
    </div>

    <!--<div class="col-sm-3">

         <table id="example2" class="display" cellspacing="0" width="100%">
        <thead>
            <tr>
                 <th>Operation</th>
  
            </tr>
        </thead>

        <tbody>
          
               
                     <tr value="+">
                      <td>+</td>
                 	 </tr>
                 	  <tr value="-">
                      <td>-</td>
                 	 </tr>
                 	  <tr value="*">
                      <td>*</td>
                 	 </tr>
                 	  <tr value="/">
                      <td>/</td>
                 	 </tr>
                   <tr value="0">
                      <td>0</td>
                   </tr>
               <tr value="1">
                      <td>1</td>
                   </tr>
                    <tr value="2">
                      <td>2</td>
                   </tr>
                    <tr value="3">
                      <td>3</td>
                   </tr>
                    <tr value="4">
                      <td>4</td>
                   </tr>
                   <tr value="5">
                      <td>5</td>
                   </tr>
                   <tr value="6">
                      <td>6</td>
                   </tr>
                   <tr value="7">
                      <td>7</td>
                   </tr>
                   <tr value="8">
                      <td>8</td>
                   </tr>
                   <tr value="9">
                      <td>9</td>
                   </tr>
                   <tr value="10">
                      <td>10</td>
                   </tr>
                   <tr value=".">
                      <td>.</td>
                   </tr>
         
        </tbody>
    </table>-->

    <div class="col-sm-4">

        <table id="example3" class="display" cellspacing="0" width="100%">
            <thead>
                <tr>

                    <th>Parameter No</th>
                    <th>Parameter Code</th>
                    <th>Tools</th>
                    <!--<th>Parameter Value</th>-->


                </tr>
            </thead>

            <tbody>


                <?php foreach($params as $r) { ?>
                <tr value="<?=$r->rp_id?>%<?=$r->param_code?>%<?=$r->rp_post_value?>%<?=$r->tool_id?>">
                    <td><?=$r->param_number?></td>
                    <td><?=$r->param_code?></td>
                    <td><?=$r->tool_code?></td>
                    <!--<td><?=$r->rp_post_value?></td>-->
                </tr>
                <?php } ?>

            </tbody>
        </table>
    </div>
</div>
</div>

</div>

</div>
<?php $this->load->view('template/footer_datatable'); ?>