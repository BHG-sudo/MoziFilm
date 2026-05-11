<?php
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
        echo $row["nev"];
        echo $row["jelszo"];
        if($row["jelszo"] === $jelszo && $row["nev"] === $felhasznev){
            
            echo "belépve";
        }else{
            header('Location: ../frontend/bejelentk.html');
        }
    }
}else{
    header('Location: ../frontend/bejelentk.html');
}
?>