<?php

    include 'include/connection.php';

    if(isset($_GET['santri'])){

        $jsonObj = array();

        $query = "SELECT * FROM santri";

        $query_con = mysqli_query($con,$query);

        while($ngaji = mysqli_fetch_assoc($query_con)){

            $row['name'] = $ngaji['name'];
            $row['umur'] = $ngaji['umur'];
            $row['alamat'] = $ngaji['alamat'];
            $row['pendidikan'] = $ngaji['pendidikan'];

            array_push($jsonObj,$row);

        }

        $showing["YukNgaji"] = $jsonObj;

        header('Content-Type: application/json; charset=utf-8');

        echo $v = str_replace('\\/','/',json_encode($showing, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT));
        die();


        }else if(isset($_GET['ustad'])){

            $jsonObj = array();

            $query = "SELECT * FROM ustad";
    
            $query_con = mysqli_query($con,$query);
    
            while($ngaji = mysqli_fetch_assoc($query_con)){
    
                $row['name'] = $ngaji['name'];
                $row['umur'] = $ngaji['umur'];
                $row['alamat'] = $ngaji['alamat'];
                $row['pendidikan'] = $ngaji['pendidikan'];
                $row['pengalaman'] = $ngaji['pengalaman'];
                $row['jadwal'] = $ngaji['jadwal'];

    
            array_push($jsonObj,$row);
    
    }
    
    $showing["YukNgaji"] = $jsonObj;
    
    header('Content-Type: application/json; charset=utf-8');
    
    echo $v = str_replace('\\/','/',json_encode($showing, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT));
    die();

}else if(isset($_GET['personal'])){

    $jsonObj = array();

    $query = "SELECT * FROM personal";

    $query_con = mysqli_query($con,$query);

    while($ngaji = mysqli_fetch_assoc($query_con)){

        $row['sekali_pertemuan'] = $ngaji['sekali_pertemuan'];
        $row['nama_paket'] = $ngaji['nama_paket'];
        

    array_push($jsonObj,$row);

}

$showing["YukNgaji"] = $jsonObj;

header('Content-Type: application/json; charset=utf-8');

echo $v = str_replace('\\/','/',json_encode($showing, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT));
die();

}else if(isset($_GET['keluarga'])){

    $jsonObj = array();

    $query = "SELECT * FROM keluarga";

    $query_con = mysqli_query($con,$query);

    while($ngaji = mysqli_fetch_assoc($query_con)){

        $row['sekali_pertemuan'] = $ngaji['sekali_pertemuan'];
        $row['nama_paket'] = $ngaji['nama_paket'];
        
    array_push($jsonObj,$row);

}

$showing["YukNgaji"] = $jsonObj;

header('Content-Type: application/json; charset=utf-8');

echo $v = str_replace('\\/','/',json_encode($showing, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT));
die();

}else if(isset($_GET['kelompok'])){

    $jsonObj = array();

    $query = "SELECT * FROM kelompok";

    $query_con = mysqli_query($con,$query);

    while($ngaji = mysqli_fetch_assoc($query_con)){

        $row['sekali_pertemuan'] = $ngaji['sekali_pertemuan'];
        $row['nama_paket'] = $ngaji['nama_paket'];
       
    array_push($jsonObj,$row);

}

$showing["YukNgaji"] = $jsonObj;

header('Content-Type: application/json; charset=utf-8');

echo $v = str_replace('\\/','/',json_encode($showing, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT));
die();

        
}else if(isset($_GET['berita'])){

    $jsonObj = array();

    $query = "SELECT * FROM berita";

    $query_con = mysqli_query($con,$query);

    while($ngaji = mysqli_fetch_assoc($query_con)){

        $row['title_berita'] = $ngaji['title_berita'];
        $row['subtitle_berita'] = $ngaji['subtitle_berita'];
        $row['image_berita'] = $ngaji['image_berita'];
        $row['isi_berita'] = $ngaji['isi_berita'];
        

    array_push($jsonObj,$row);

}

$showing["YukNgaji"] = $jsonObj;

header('Content-Type: application/json; charset=utf-8');

echo $v = str_replace('\\/','/',json_encode($showing, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT));
die();
    
}else if(isset($_GET['guru'])){

    $jsonObj = array();

    $query = "SELECT * FROM guru";

    $query_con = mysqli_query($con,$query);

    while($ngaji = mysqli_fetch_assoc($query_con)){

        $row['nama_guru'] = $ngaji['nama_guru'];
        $row['keahlian'] = $ngaji['keahlian'];
        $row['biografi_guru'] = $ngaji['biografi_guru'];
        $row['rating'] = $ngaji['rating'];
        $row['total_santri'] = $ngaji['total_santri'];
        $row['total_pertemuan'] = $ngaji['total_pertemuan'];
        
    array_push($jsonObj,$row);

}

$showing["YukNgaji"] = $jsonObj;

header('Content-Type: application/json; charset=utf-8');

echo $v = str_replace('\\/','/',json_encode($showing, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT));
die();



}else if(isset($_GET['detailguru'])){

    $jsonObj = array();

    $query = "SELECT * FROM detailguru";

    $query_con = mysqli_query($con,$query);

    while($ngaji = mysqli_fetch_assoc($query_con)){

        $row['image_guru'] = $ngaji['image_guru'];
        $row['nama_guru'] = $ngaji['nama_guru'];
        $row['image_guru'] = $ngaji['image_guru'];
        $row['rating'] = $ngaji['rating'];
        $row['keahlian'] = $ngaji['keahlian'];
        $row['mengajar_di'] = $ngaji['mengajar_di'];
        $row['biografi'] = $ngaji['biografi'];      
        $row['pengalaman'] = $ngaji['pengalaman'];
        $row['paket_belajar'] = $ngaji['paket_belajar'];
        $row['jadwal_tahun'] = $ngaji['jadwal_tahun'];
        $row['jadwal_bulan'] = $ngaji['jadwal_bulan'];
        $row['jadwal_minggu_ke'] = $ngaji['jadwal_minggu_ke'];
        
    array_push($jsonObj,$row);

}

$showing["YukNgaji"] = $jsonObj;

header('Content-Type: application/json; charset=utf-8');

echo $v = str_replace('\\/','/',json_encode($showing, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT));
die();

}else if(isset($_GET['jadwal_mengajar'])){

    $jsonObj = array();

    $query = "SELECT * FROM jadwal_mengajar";

    $query_con = mysqli_query($con,$query);

    while($ngaji = mysqli_fetch_assoc($query_con)){

        $row['jam_pelajaran'] = $ngaji['jam_pelajaran'];
        $row['hari_1'] = $ngaji['hari_1'];
        $row['hari_2'] = $ngaji['hari_2'];
        $row['hari_3'] = $ngaji['hari_3'];
        $row['hari_4'] = $ngaji['hari_4'];
        $row['hari_5'] = $ngaji['hari_5'];
        $row['hari_6'] = $ngaji['hari_6'];      
        $row['hari_7'] = $ngaji['hari_7'];
        
    array_push($jsonObj,$row);

}

$showing["YukNgaji"] = $jsonObj;

header('Content-Type: application/json; charset=utf-8');

echo $v = str_replace('\\/','/',json_encode($showing, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT));
die();
}
?>