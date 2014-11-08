<script>
$(document).ready(function() {

    $('#example').dataTable();

} );


 var url="<?php echo site_url();?>";
    function deleteRule(id){
       var r=confirm("Do you want to delete this?")
        if (r==true)
          window.location = url+"/admin/rulemanagementDelete/"+id;
        else
          return false;
        }
</script>
 <div class="container-fluid">
    <div class="row">
       
        <div class="col-md-10 col-md-offset-2">
         <?php
            if($this->session->flashdata('rule_add_sucess')){
            ?>
            <div class="alert alert-success alert-dismissible" role="alert"><?=$this->session->flashdata('rule_add_sucess')?></div>
            <?php
            }
            elseif($this->session->flashdata('rule_add_fail'))
            {
            ?>
            <div class="alert alert-danger alert-dismissible" role="alert"><?=$this->session->flashdata('rule_add_fail')?></div>
            <?php
            
            }
             if($this->session->flashdata('delete_rule_fail'))
            {
            ?>
            <div class="alert alert-danger alert-dismissible" role="alert"><?=$this->session->flashdata('delete_rule_fail')?></div>
            <?php
            
            }
             elseif($this->session->flashdata('delete_rule_sucess')){
            ?>
            <div class="alert alert-sucess alert-dismissible" role="alert"><?=$this->session->flashdata('delete_rule_sucess')?></div>
            <?php
            }
        ?>
          
          <h1 class="page-header">Rule Management</h1>
      </div>

    </div>
    <div class="row">

        <div class="col-sm-2 col-sm-offset-2">
              <a href="<?=site_url('admin/viewAddRuleValueManagement/')?>" class="btn btn-default">Add</a>
      </div>
  </div>
  
    <div class="row">

        <div class="col-sm-1">
              <?=(!empty($sidebar))?$sidebar:""?>
      </div>

      <div class="col-sm-11 col-sm-offset-2">

         <table id="example" class="display" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>Tool Code</th>
                <th>Rule Number</th>
                <th>var1</th>
                <th>Cond</th>
                <th>var2</th>
               <?php
                for($i=1;$i<=10;$i++)
                echo "<th>param".$i."</th>";
                ?>
                <th>Action</th>
            </tr>
        </thead>


 
        <tbody>
            <?php
            //get the data
 
            foreach($rules as $r){
                ?>
                <tr>
                    <td><?=$r->tool_code?></td>

                    <td> <a href="<?=site_url('admin/ruleManagementold/edit/'.$r->rule_id)?>"><?=$r->rule_number?></a></td>
                            
                       <td><?=$r->var1?></td>
                        <td><?=$r->cond?></td>
                        <td><?=$r->var2?></td>
                        <?php
                         for($i=1;$i<=10;$i++){
                            $result=array();
                                 
                             $result=$this->my_func->getParamValue($r->rule_id,$i);
                            
                            //print_r($result); die();
                             if(!empty($result)){
                              
                             foreach($result as $row)
                             {
                                if($row->pio_id==3)
                                {
                                    if($row->rp_formula==null)
                                    {
                                         ?>
                                         <td> <a href="<?=site_url('admin/ruleValueManagement/edit/'.$row->rp_id)?>"><?=$row->rp_post_value?></a></td>
                                        
                                           <?php
                                    }
                                    else
                                    {
                                        ?>
                                         <td> <a href="<?=site_url('admin/ruleValueManagement/edit/'.$row->rp_id)?>"><?=$row->rp_formula?></a></td>
                                        
                                           <?php 
                                    }
                                    
                                }
                                else
                                {
                                 ?>
                             <td> <a href="<?=site_url('admin/ruleValueManagement/edit/'.$row->rp_id)?>"><?=$row->rp_post_value?></a></td>
                            
                               <?php 
                                }
                              
                             }
                         }
                         else
                         {
                            ?>
                                  <td> -</td>
                           
                            <?php
                         }
                           // print_r($result);
                           // echo "<br/>";
                         }
                        //die();
                        ?>
                          <td><a href="javascript:void(0);" onclick="deleteRule(<?php echo $row->rule_id;?>);">x</a></td>
                       
                </tr>
                <?php
            }

            ?>
           
           
        </tbody>
    </table>
      </div>

    </div>

    </div>

