<div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
          	<?php
          		//$url=strtolower($this->uri->segment(2));
          		$query = $_SERVER['QUERY_STRING'] ? '?'.$_SERVER['QUERY_STRING'] : '';
                    $url=$this->config->site_url().$this->uri->uri_string(). $query; 
          		$navArr=array('Home'=>site_url('admin'),
                         'Structure Number'=>site_url('admin/structureNumber'),
                         //'Layer Management'=>site_url('admin/layerManagement'),
                         'Tool Management'=>site_url('admin/toolManagement'),
                         'Layer Tool Management'=>site_url('admin/layerToolManagement'),
                         'Material Management'=>site_url('admin/materialManagement'),
                         'Imported Data Management'=>site_url('admin/importedManagement'),
                         'Rule Management'=>site_url('admin/ruleManagement'),
                         'Logout'=>site_url('login/logout'));
          		
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
          			
          				?>
          				 <li class="<?=$active?>"><a href="<?=$link?>"><?=$title?></a></li>
          				<?php
          		}
          	?>
       
            </ul>
          
        </div>