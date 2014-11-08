 <?php
           if($this->session->flashdata('error'))
            {
            ?>
            <div class="alert alert-danger alert-dismissible" role="alert"><?=$this->session->flashdata('error')?></div>
            <?php
            
            }
            
        ?>
        <script>
function goBack() {
    window.history.back()
}
</script>

<body>
<button onclick="goBack()">Go Back</button>
</body>