<?php
    $_username = $_POST['txtUsername'];
    $_password = $_POST['txtPassword'];
    $_email = $_POST['txtEmail'];
    $_phoneNumber = $_POST['txtPhoneNumber'];

    $host = "localhost";
    $user = "root";
    $password ="";
    $database = "register";

    $conn = new mysqli($host,$user,$password,$database);

    if($conn->connect_error){
        die("Connection failed: ".$conn->connect_error);
    }
    echo "Connected successfully";


    $sql = "INSERT INTO register (username, password, email, phoneNumber)
            VALUES ('$_username','$_password','$_email','$_phoneNumber')";

    if($conn->query($sql) == TRUE){
        echo "Dang ky thanh cong";
    }
    else{
        echo "Dang ky that bai";
    }
?>