<?php

# 1. membuat koneksi database dengan php
include("koneksi.php");

# 2. mengambil semua value dari form dan dimasukkan ke masing" variabel
$nidn = $_POST['nidn'];
$nama_lengkap = $_POST['nama_lengkap'];
$rumpun = $_POST['rumpun'];
$tempat_lahir = $_POST['tempat_lahir'];
$tgl_lahir = $_POST['tgl_lahir'];
$email = $_POST['email'];


# 3. menuliskan query simpan
$simpan = "INSERT INTO tb_dosen (nidn,nama_lengkap,rumpun,tempat_lahir,tgl_lahir,email) values ('$nidn','$nama_lengkap','$rumpun','$tempat_lahir','$tgl_lahir','$email')";

# 4. menjalankan query
mysqli_query($koneksi,$simpan);


?>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- css link -->
     <link rel="stylesheet" href="css/bootstrap.css">
    <title>Bootstrap</title>
</head>
<body>

<div class="container">
    <div class="row mt-5">
        <div class="col-6 m-auto">
            <div class="card">
                <div class="card-header text-center">
                    Formulir Dosen
                </div>
                <div class="card-body">
                    <table class="table">
                          <tbody>
                            <tr>
                                <td scope="row">NIDN</td>
                                <th>: <?=$nidn?></th>
                            </tr>
                            <tr>
                                <td scope="row">Nama Lengkap</td>
                                <th>: <?=$nama_lengkap?></th>
                            </tr>
                            <tr>
                                <td scope="row">Rumpun</td>
                                <th>: <?=$rumpun?></th>
                            </tr>
                            <tr>
                                <td scope="row">Tempat Lahir</td>
                                <th>: <?=$tempat_lahir?></th>
                            </tr>
                            <tr>
                                <td scope="row">Tanggal Lahir</td>
                                <th>: <?=$tgl_lahir?></th>
                            </tr>
                            <tr>
                                <td scope="row">email</td>
                                <th>: <?=$email?></th>
                            </tr>                          
                            
                        </tbody>
                    </table>
                          <a href="index.php" class="btn btn-warning btn-sm" >Kembali</a>  
                </div>
            </div>

        </div>

    </div>


</div>
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.bundle.js"></script>
</body>
</html>