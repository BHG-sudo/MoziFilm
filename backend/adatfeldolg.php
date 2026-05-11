<?php
session_start();

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "filmek";

$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$sql = "SELECT * FROM meta_adat";
$result = mysqli_query($conn, $sql);
?>
