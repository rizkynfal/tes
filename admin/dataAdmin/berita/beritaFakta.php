<?php 
    $query=mysqli_query($koneksi,"SELECT * FROM beritafakta");
    $fetch=mysqli_fetch_array($query);


 ?>

<div class="panel panel-default">
    <div class="panel-heading">
        <span class="glyphicon glyphicon-th-list"></span><b> Data Berita</b>
    </div>
    <div class="panel-body">
            <h2>Daftar Berita Fakta</h2><br>
            <table class="table table-responsive table-striped table-bordered text-center data">
                <thead>
                    <tr>   
                        <th>No</th>
                        <th>ID Berita Fakta</th>
                        <th>Nama Penginput</th>
                        <th>Email Penginput</th>
                        <th>Judul Berita Fakta</th>
                        <th>Text Dari Berita Fakta</th>
                        <th>Link Dari Berita Fakta</th>
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
                        <td><?=$data['namafkt']?></td>
                        <td><?=$data['emailfkt']?></td>
                        <td><?=$data['judulfkt']?></td>
                        <td><?=$data['cpytxtfkt']?></td>
                        <td><?=$data['cpylinkfkt']?></td>
                        <td><?=$data['alasanfkt']?></td>
                        <!-- <td><?=$data['imglinkfkt']?></td> -->
                        <td>
                            <a class="btn btn-warning" href="berita/deleteBeritaFakta.php?id=<?=$data['id'];?>" onclick="return confirm('Apakah anda yakin ingin menghapus berita ini dari berita fakta ?')"><i class="glyphicon glyphicon-trash"></i>
                            </a>

                            <a href="" class="btn btn-info" data-toggle="modal" data-target="#updatefkt" style="margin: 5px;">
                                Update
                            </a>
                        </td>
                    </tr>
                    <?php $no++; endforeach; ?>
                </tbody>
            </table>

                <div id="updatefkt" class="modal fade" tabindex="1" role="dialog">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <b>Update Berita Fakta</b>
                                <button type="button" class="close" data-dismiss="modal" aria-label="close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <form action="" method="POST">
                                    <input type="text" name="namaPenginput" required placeholder="Nama Penginput" class="form-control"><br/>
                                    <input type="text" name="emailPenginput" required placeholder="Email Penginput" class="form-control"><br/>
                                    <input type="text" name="judul" required placeholder="Judul Berita" class="form-control"><br/>
                                    <input type="text" name="textBerita" required placeholder="Text Dari Berita" class="form-control"><br/>
                                    <input type="text" name="linkBerita" required placeholder="Link Berita" class="form-control"><br/>
                                    <input type="text" name="alasan" required placeholder="Alasan" class="form-control"><br/>
                                    <button name="save" type="submit" class="btn btn-info" style="width: 100%;">Simpan</button>
                                    <br/>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
    </div>
</div>