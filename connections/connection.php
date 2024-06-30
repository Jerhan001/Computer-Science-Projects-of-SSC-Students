<?php

session_start();


 function connection(){

    $host = "localhost";
    $username = "root";
    $password = "";
    $database = "student_database";

    
$con = new mysqli ($host, $username, $password, $database);

if($con->connect_error){
   

        echo $con->connect_error;
}else{

    return $con;
}

$con->close();
 }
 