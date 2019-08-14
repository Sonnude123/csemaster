<?php
    $_username = $_POST['txtUsername'];
    $_password = $_POST['txtPassword'];

    $host = "localhost";
    $user = "root";
    $password ="";
    $database = "register";

    $conn = new mysqli($host,$user,$password,$database);

    if($conn->connect_error){
        die("Connection failed: ".$conn->connect_error);
    }
    echo "Connected successfully";


    $sql = "SELECT username, password FROM register where username = '$_username' AND password = '$_password'";

    if($conn->query($sql) == TRUE){
        header('Location: http://localhost/congnghethongtin/admin/giaodienadmin.html');
    }
    else{
        echo "Dang nhap that bai";
    }
?>