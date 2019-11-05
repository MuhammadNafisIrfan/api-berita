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
    
}   


?>