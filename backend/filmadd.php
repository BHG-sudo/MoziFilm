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

$filmid = $_POST["filmid"];
$id = $_SESSION["id"];

$sql = "INSERT INTO `film_listak`(`filmekID`, `felhasznalokID`) VALUES ('$filmid','$id');";
if ($conn->query($sql) === TRUE) {
    header("Location: ../frontend/index.php");
  } else {
    echo "Hiba: " . $sql . "<br>" . $conn->error;
  }

mysqli_close($conn);