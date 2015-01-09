 <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#"><?=$this->config->item('system_name');?></a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#">Dashboard</a></li>
            
            <li><a href="#"><?=$this->session->userdata('user_email')?></a></li>
            <?php
            $rule="";
             if($this->session->userdata('role_id')==1)
              $rule="administrator";
            elseif($this->session->userdata('role_id')==2)
              $rule="staff";

            if(!empty($rule))
            {
              ?>
              <li><a href="#">Hello, <?php $sess = $this->session->all_userdata(); ?> <?=$sess['fullname']; ?> (<?=$sess['username']; ?>)</a></li>
              <?php
            }
          
            ?>

             <li><a href="<?=site_url('login/logout')?>">Logout</a></li>
            <li><a href="#">Help</a></li>
          </ul>
        </div>
      </div>
    </div>