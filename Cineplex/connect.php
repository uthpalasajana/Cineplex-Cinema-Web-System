<?php

//DB Connection Parameters

$dbServer = "localhost";
$dbuser = "root";
$dbpass = "";
$database = "uthpalaweb";

//Connect

$conn = mysqli_connect($dbServer, $dbuser, $dbpass, $database);

if (!$conn) {
    die("Connection Faild : " . mysqli_connect_error());
}

?>