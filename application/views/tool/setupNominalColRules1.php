
<form method="post" action="<?=site_url('admin/updateTTN'); ?>">
<div class="row">
    <div class="col-md-10 col-md-offset-2">
        
        <h3>Tool Code: <?=$tool_tool_nominal[0]->tool_code; ?></h3>
        <h4>Tool Description: <?=$tool_tool_nominal[0]->tool_description; ?></h4>
        <table class="table table-hover">
            <thead>
                <tr style="background-color: #ddd;">
                    <th>Nominal Column</th>
                    <th>Data Type</th>
                    <th>Current Data</th>
                    <th>Value</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                $i = 0;
                if (isset($tool_tool_nominal) && !empty($tool_tool_nominal)) {
                    foreach ($tool_tool_nominal as $ttn) {
                ?>
                <tr>
                    <td><?=$ttn->nc_name; ?></td>
                    <td>
                        <input type="hidden" name="ttn_id_<?=$i; ?>" value="<?=$ttn->ttn_id; ?>" />
                        <select name="ttnt_id_<?=$i; ?>" ii="<?=$i; ?>" class="ttnt_id" id="<?=$ttn->ttn_id; ?>">
                            <option value="-1">-- Please choose field type --</option>
                        <?php
                        if (isset($tool_tool_nominal_type) && !empty($tool_tool_nominal_type)) {
                            foreach ($tool_tool_nominal_type as $ttnt) {
                                
                        ?>
                            <option <?php if($ttnt->ttnt_id == $ttn->ttnt_id) { echo "selected"; } ?> 
                                value="<?=$ttnt->ttnt_id; ?>"><?=$ttnt->ttnt_desc; ?></option>
                        <?php } } ?>
                        </select>
                    </td>
                    <td><?php
                    if ($ttn->ttnt_id == 1) {
                        $ttn_value = $ttn->ttn_value;
                        $pecah = explode(",", $ttn_value);
                        echo "Range 1: ".$pecah[0]."<br />Range 2: ".$pecah[1];
                    } else if ($ttn->ttnt_id == 2) {
                        echo "Constant Value: ".$ttn->ttn_value;
                    }
                    ?></td>
                    <td id="papar_<?=$ttn->ttn_id; ?>">-&nbsp;</td>
                </tr>
                <?php $i += 1; } } ?>
            </tbody>
        </table>
        
        <input type="hidden" name="bil" value="<?=$i; ?>" />
        <input type="hidden" name="tool_id" value="<?=$this->uri->segment('3'); ?>" />
        <button type="submit" class="btn btn-primary">Save</button>
        
    </div>
</div>
</form>

<script>
$(document).ready(function() {
    $(".ttnt_id").change(function() {
        var id = $(this).attr("id");
        var type = $(this).val();
        var str = "-";
        var ii = $(this).attr("ii");
        if (type == '1') {
            str = "<input type='text' name='range1_"+ii+"' class='form-control' placeholder='Insert the range 1.' />\n\
                <input type='text' name='range2_"+ii+"' class='form-control' placeholder='Insert the range 2.' />";
        } else if (type == '2') {
            str = "<input type='text' name='range1_"+ii+"' class='form-control' placeholder='Insert the constant value.' />\n\
                <input type='hidden' name='range2_"+ii+"' value='-' />";
        } else if (type == '3') {
            
        }
        $("#papar_"+id).html(str);
    });
});
</script>