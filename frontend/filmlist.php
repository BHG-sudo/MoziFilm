<?php
    session_start();
    if (isset($_SESSION["belepve"])) {
        if ($_SESSION["belepve"] == true) {
            $servername = "localhost";
            $username = "root";
            $password = "";
            $dbname = "filmek";

            $conn = mysqli_connect($servername, $username, $password, $dbname);
            $id = $_SESSION["id"];
            if (!$conn) {
                die("Connection failed: " . mysqli_connect_error());
            }?>
            <script>
                const filmlist = []
            </script><?php
            $sql = "SELECT * FROM meta_adat WHERE meta_adat.id in (SELECT film_listak.filmekID FROM film_listak WHERE film_listak.felhasznalokID = '$id');";
            $result = mysqli_query($conn, $sql)or die("Nincs a listádon semmi");
            if (mysqli_num_rows($result) > 0) {
                while($row = mysqli_fetch_assoc($result)){
                ?>
                <script>
                    filmlist.push( <?php echo json_encode($row); ?> );
                    
                </script>
                <?php
                }
            } else {
                echo "0 results";
            }
            mysqli_close($conn);
        }
    }
?>
<!DOCTYPE html>
<html lang="hu">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="filmlist.css">
    <title>Film lista</title>
</head>

<body>
<nav id="nav">
        <button class="navigombok" onclick="document.location='index.php'">
            <span>Főoldal</span>
        </button>
        <button class="navigombok" onclick="document.location='../backend/kijelentk.php'">
            <span>Kijelentkezés</span>
        </button>
    </nav>
    <main role="main">
        <div id="crapton">
            <h1>Film figyelő</h1>
        </div>
            <div class="moviescon">
                <ul id="moviesCon" class="moviespad">
                </ul>
            </div>
    </main>
    <script src="filmlist.js"></script>
</body>

</html>