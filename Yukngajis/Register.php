<?php
$jsonKu = array();

$query = "SELECT* FROM tbl_ustad";

$query_con = mysqli_query($con, $query);

while($data = mysqli_fetch_assoc($query_con)){

    $arroyyan['nama'] = $data ['nama'];

    array_push($arroyyan, $jsonKu);

}
