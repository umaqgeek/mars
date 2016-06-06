
<?php
//print_r($tool_tool_nominal); die();
if (!isset($tool_tool_nominal[0]->lrs_rule_name)) {
    echo "<script>history.back(-1);</script>";
}
?>

<form method="post" action="<?=site_url('admin/updateTTN2'); ?>">
<div class="row">
    <div class="col-md-10 col-md-offset-2">
        
        <h3>Rule Name: <?=$tool_tool_nominal[0]->lrs_rule_name; ?></h3>
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
                        
                        //print_r($ttn);
                ?>
                <tr>
                    <td><?=$ttn->nc_name; ?></td>
                    <td>
                        <input type="hidden" name="ln_id_<?=$i; ?>" value="<?=$ttn->ln_id; ?>" />
                        <select name="ttnt_id_<?=$i; ?>" ii="<?=$i; ?>" class="form-control ttnt_id" id="<?=$ttn->ln_id; ?>">
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
                        $ttn_value = $ttn->ln_value;
                        $pecah = explode(",", $ttn_value);
                        echo "Range 1: ".$pecah[0]."<br />Range 2: ".$pecah[1];
                    } else if ($ttn->ttnt_id == 2) {
                        echo "Constant Value: ".$ttn->ln_value;
                    } else if ($ttn->ttnt_id == 3) {
                        $ttn_value = $ttn->ln_value;
                        $pe = explode(";", $ttn_value);
                        echo "List:-<br />";
                        $ip = 1;
                        foreach ($pe as $p) {
                            echo $ip . ". " . $p . "<br />";
                            $ip+=1;
                        }
                    }
                    ?></td>
                    <td id="papar_<?=$ttn->ln_id; ?>">
                    <?php
                    if ($ttn->ttnt_id == 1) {
                        $ttn_value = $ttn->ln_value;
                        $pecah = explode(",", $ttn_value);
                        echo "<input type='text' name='range1_".$i."' class='form-control' placeholder='Insert the range 1.' value='".$pecah[0]."' />"
                                . "<input type='text' name='range2_".$i."' class='form-control' placeholder='Insert the range 2.' value='".$pecah[1]."' />";
                    } else if ($ttn->ttnt_id == 2) { 
                        echo "<input type='text' name='range1_".$i."' class='form-control' placeholder='Insert the constant value.' value='".$ttn->ln_value."' />"
                                . "<input type='hidden' name='range2_".$i."' value='-' />";
                    } else if ($ttn->ttnt_id == 3) { 
                        echo "<input type='text' name='range1_".$i."' class='form-control' placeholder='Insert the list. Example: item1; item2; item3' value='".$ttn->ln_value."' />"
                                . "<input type='hidden' name='range2_".$i."' value='-' />";
                    } else {
                        echo "-&nbsp;";
                    }
                    ?>
                    </td>
                </tr>
                <?php $i += 1; } } ?>
            </tbody>
        </table>
        
        <input type="hidden" name="bil" value="<?=$i; ?>" />
        <input type="hidden" name="lrs_id" value="<?=$this->uri->segment('3'); ?>" />
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
            str = "<input type='text' name='range1_"+ii+"' class='form-control' placeholder='Insert the list. Example: item1; item2; item3' />\n\
                <input type='hidden' name='range2_"+ii+"' value='-' />";
        }
        $("#papar_"+id).html(str);
    });
});
</script>