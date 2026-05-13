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
$jelszo = $_POST["jelszo"];

$sql = "SELECT * FROM felhasznalok WHERE nev = '$felhasznev'";
$result = mysqli_query($conn, $sql);
if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
        if($row["jelszo"] === $jelszo && $row["nev"] === $felhasznev){
            $_SESSION["id"] = $row["id"];
            $_SESSION["email"] = $row["email"];
            $_SESSION["nev"] = $felhasznev;
            $_SESSION["belepve"] = true;
            header("Location: ../frontend/index.php");
        }else{
            header('Location: ../frontend/bejelentk.html');
        }
    }
}else{
    header('Location: ../frontend/bejelentk.html');
}
mysqli_close($conn);
?>