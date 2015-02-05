<div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
          	<?php
          		//$url=strtolower($this->uri->segment(2));
          		$query = $_SERVER['QUERY_STRING'] ? '?'.$_SERVER['QUERY_STRING'] : '';
                    $url=$this->config->site_url().$this->uri->uri_string(). $query; 

                    $navArr=array();

          		$navArrAdmin=array(
						 'Home'=>site_url('admin'),
                         'User Management'=>site_url('admin/usermanagement'),
                         'Tool Management'=>site_url('admin/toolManagement'),
                         'Layer Management'=>site_url('admin/layerManagement'),
                         'Layer Tool Management'=>site_url('admin/layerToolManagement'),
						 
                         'Admissible-Pressure Management'=>site_url('admin/admisPresMngmnt'),
						 
                         'Material Management'=>site_url('admin/materialManagement'),
                         'Nominal Column Management'=>site_url('admin/nominalColumnManagement'),
                          'Parameter Management'=>site_url('admin/parameterManagement'),
                         'Rule Management'=>site_url('admin/ruleManagement'),
						 
						 'Tool Sheet'=>site_url('admin/structureNumber'),
						 'Imported Data Management'=>site_url('admin/importedManagement'),
						 'Tooling Master'=>site_url('admin/toolingMaster'),
						 
                         'Logout'=>site_url('login/logout')
				);

          		    $navArrStaff=array(
						 'Home'=>site_url('admin'),
                         'Tool Sheet'=>site_url('admin/structureNumber'),
						 'Imported Data Management'=>site_url('admin/importedManagement'),
						 
						 'Tooling Master'=>site_url('admin/toolingMaster'),
						 
                         'Logout'=>site_url('login/logout')
					);

                  //administrator
                 if($this->session->userdata('role_id')==1){
                  $navArr=$navArrAdmin;
                 }else
                 {
                  $navArr=$navArrStaff;
                 }

          		foreach($navArr as $title=>$link)
          		{
                         //print_r(stripos(str_replace(' ','',$title),$url));
                         //$url==strtolower(str_replace(' ','',$title))
          			if($url==$link)
          			{
          				$active="active";
          			
          			}
          			else
          			{
          				$active=" ";
          			}
          			
                         if($title=="Structure Number"){
                              ?>
                               <li class="<?=$active?>"><a href="<?=$link?>"><?=$title?></a></li>
                              <!--<span><hr></span>-->
                              <?php
                         }
                         else
                         {
                              ?>
                               <li class="<?=$active?>"><a href="<?=$link?>"><?=$title?></a></li>
                              <?php
                         }
          				
          		}
          	?>
       
            </ul>
          
        </div>