<html>
<body style="background-color:white;">
<?php 
include 'koneksi/koneksi.php';

?>

<div class ="container">
    <div class="col-md-12">
      <div class="panel panel-default">
        <div class="panel-body">
            

<!-- tabel -->
  <div class="card mt-3">
    <div class="card-header bg-success text-white">
   
    </div>
    <div class="card-body" >


    <?php
     
      $tampil = mysqli_query($koneksi, "SELECT * from laporhoax where id = $_POST[ayam] ");
      while ($data = mysqli_fetch_array($tampil)) :
        
    ?>
            <div class="row">
              <div class="col-md-6">
                <img src=<?=$data['imglink']?>>
              </div>
              <div class="col-md-9" style="border-bottom: 1px solid">
                <a href="#">
                  <h3><?=$data['judul']?></h3>
                  <p><?=$data['cpytxt']?></p>  
                <?php
                
                ?>
                </a>
              </div>  
            </div> 

    <?php endwhile; ?>

    </div>
</div>

</div>


        </div>
      </div>
    </div>
</div>



</body>
</html>