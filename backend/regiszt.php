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

$felhasznev = $_POST["nev"];
$email = $_POST["email"];
$jelszo = $_POST["jelszo"];

$sql = "INSERT INTO felhasznalok (id, nev, jelszo, email)
  VALUES ('[value-1]','$felhasznev','$jelszo','$email')";
if ($conn->query($sql) === TRUE) {
    $_SESSION["email"] = $email;
    $_SESSION["nev"] = $felhasznev;
  } else {
    echo "Hiba: " . $sql . "<br>" . $conn->error;
  }

mysqli_close($conn);
?>