<?php 
    $query=mysqli_query($koneksi,"SELECT * FROM beritahoax");
    $fetch=mysqli_fetch_array($query);
 ?>
<div class="panel panel-default">
    <div class="panel-heading">
        <span class="glyphicon glyphicon-th-list"></span><b> Data Berita</b>
    </div>
    <div class="panel-body">
            <h2>Daftar Berita Hoax</h2><br>
            <table class="table table-responsive table-striped table-bordered text-center data">
                <thead>
                    <tr>   
                        <th>No</th>
                        <th>ID Berita Hoax</th>
                        <th>Nama Penginput</th>
                        <th>Email Penginput</th>
                        <th>Judul Berita Hoax</th>
                        <th>Text Dari Berita Hoax</th>
                        <th>Link Dari Berita Hoax</th>
                        <th>Alasan</th>
                        <!-- <th>Link Gambar</th> -->
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <?php $no=1; foreach($query as $data) :?>
                        <td><?=$no;?></td>
                        <td><?=$data['id']?></td>
                        <td><?=$data['namahx']?></td>
                        <td><?=$data['emailhx']?></td>
                        <td><?=$data['judulhx']?></td>
                        <td><?=$data['cpytxthx']?></td>
                        <td><?=$data['cpylinkhx']?></td>
                        <td><?=$data['alasanhx']?></td>
                        <!-- <td><?=$data['imglinkhx']?></td> -->
                        <td>
                            <a class="btn btn-warning" href="berita/deleteBeritaHoax.php?id=<?=$data['id'];?>" onclick="return confirm('Apakah anda yakin ingin menghapus berita ini dari berita hoax ?')"><span class="glyphicon glyphicon-trash"></span></a>
                        </td>
                    </tr>
                    <?php $no++; endforeach; ?>
                </tbody>
            </table>
    </div>
</div>