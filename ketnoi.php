<?php
    $localhost = "localhost";
    $username = "root";
    $password = "";
    $database = "baitaplon";

    $conn = mysqli_connect($localhost, $username, $password, $database);

    if($conn->connect_error){
        die("Connection failed: ".$conn->connect_error);
    }
        // echo "Connected successfully";
?>