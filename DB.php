<?php

$dbhost = "localhost";
$dbuser = "wang-xin1";
$dbpass = "2batb000";
$dbname = "2201713130118";


$connection = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);

// Test if connection is ok
if (mysqli_connect_errno()) {
    die("Database connection failed: " .
        mysqli_connect_error() .
        " (" . mysqli_connect_errno() . ")" 
    );
}

?>