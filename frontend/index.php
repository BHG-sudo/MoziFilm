<?php
session_start();
if (isset($_SESSION["belepve"])) {
        
}

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "filmek";

$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
?>
<script>
    const adatok = [];
</script>
<?php  
$sql = "SELECT * FROM meta_adat";
$result = mysqli_query($conn, $sql);
if (mysqli_num_rows($result) > 0) {
    while($row = mysqli_fetch_assoc($result)){
    ?>
    <script>
        adatok.push( <?php echo json_encode($row); ?> );
        
    </script>
    <?php
    }
} else {
    echo "0 results";
}
mysqli_close($conn);

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="index.css">
    <link rel="stylesheet" href="movieCard.css">
    <title>Főoldal</title>
</head>

<body>
    <nav id="nav">
        <button class="navigombok">
            <a href="bejelentk.html">Bejelentkezés</a>
        </button>
        <button class="navigombok">
            <a href="regiszt.html">Regisztráció</a>
        </button>
        <button class="navigombok">
            <a href="filmlist.html">Film listád</a>
        </button>
        <button class="navigombok">
           <a href="../backend/kijelentk.php">Kijelentkezés</a>
        </button>
    </nav>
    <main role="main">
        <div id="crapton">
            <h1>Elérhető Filmek</h1>
        </div>
        <div>
            <ul class="moviescon" id="moviescon">

            </ul>
        </div>
        <div id="movieC" class="movieCard disabled"></div>
    </main>
    <script src="main.js"></script>
</body>

</html>
<?php 
if (isset($_SESSION["belepve"])) {
    if ($_SESSION["belepve"] == true) {
        ?>
            <script>
                let nav = document.getElementsByClassName("navigombok");
                nav[0].style.display = "none";
                nav[1].style.display = "none";
            </script>
        <?php
    }else{
        ?>
            <script>
                let nav = document.getElementsByClassName("navigombok");
                nav[3].style.display = "none";
            </script>
        <?php
    }
}else{
    ?>
        <script>
            let nav = document.getElementsByClassName("navigombok");
            nav[3].style.display = "none";
        </script>
    <?php
}
?>