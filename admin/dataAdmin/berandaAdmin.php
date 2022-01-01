<?php 
    $query=mysqli_query($koneksi,"SELECT * FROM laporhoax");
    $fetch=mysqli_fetch_array($query);
 ?>
<div class="panel panel-default">
    <div class="panel-heading">
        <span class="glyphicon glyphicon-th-list"></span><b> Data Berita</b>
    </div>
    <div class="panel-body">
            <h2>Daftar Inputan Berita</h2><br>
            <table class="table table-responsive table-striped table-bordered text-center data">
                <thead>
                    <tr>   
                        <th>No</th>
                        <th>ID Berita</th>
                        <th>Nama Penginput</th>
                        <th>Email Penginput</th>
                        <th>Judul</th>
                        <th>Text Dari Berita</th>
                        <th>Link Dari Berita</th>
                        <th>Alasan</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <?php $no=1; foreach($query as $data) :?>
                        <td><?=$no;?></td>
                        <td><?=$data['id']?></td>
                        <td><?=$data['nama']?></td>
                        <td><?=$data['email']?></td>
                        <td><?=$data['judul']?></td>
                        <td><?=$data['cpytxt']?></td>
                        <td><?=$data['cpylink']?></td>
                        <td><?=$data['alasan']?></td>
                        <td>
                            <a class="btn btn-info" style="margin: 5px;" href="berita/moveToFakta.php?id=<?=$data['id'];?>" onclick="return confirm('Apakah anda yakin ingin memindahkan berita ini ke berita fakta ?')">Fakta</a> 
                            
                            <a class="btn btn-warning" href="berita/moveToHoax.php?id=<?=$data['id'];?>" onclick="return confirm('Apakah anda yakin ingin memindahkan berita ini ke berita hoax ?')">Hoax</a>

                            <a class="btn btn-danger" href="hapusBeritaLapor.php?id=<?=$data['id'];?>" onclick="return confirm('Apakah anda yakin ingin menghapus berita ini dari daftar input berita ?')"><i class="glyphicon glyphicon-trash"></i></a>
                        </td>
                    </tr>
                    <?php $no++; endforeach; ?>
                </tbody>
            </table>
    </div>
</div>