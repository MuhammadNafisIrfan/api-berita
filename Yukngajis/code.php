<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>

<?php
$angka=range(0,9); //code dibuat dari angka 0-9
shuffle($angka); //untuk mengacak angka
$ambilangka=array_rand($angka,6); //pengambilan angka sebanyak 6 digit
$angkastring=implode("-",$ambilangka); //membuat angka-angka yang digenerate dipisahkan dengan -
$code=$angkastring;
     
if(isset($_POST['generate'])){
    echo "<script>alert('Hai $_POST[nama], ini kode kamu : $code')</script>";
}
?>
 
<body>
<h1>Masukkan Nama Anda</h1>
Silahkan masukkan nama anda dengan tidak menggunakan huruf kapital
<form method="post">
    <table>
        <tr>
            <td>Nama</td>
            <td>:</td>
            <td><input type="text" name="nama" /></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td><input type="submit" name="generate" value="Generate Code" /></td>
        </tr>
    </table>
</form>
</body>
</html>