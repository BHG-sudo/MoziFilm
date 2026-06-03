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
    while ($row = mysqli_fetch_assoc($result)) {
?>
        <script>
            adatok.push(<?php echo json_encode($row); ?>);
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
    <title>Főoldal</title>
</head>

<body>
    <nav id="nav">
        <button class="navigombok" onclick="document.location='bejelentk.html'">
            <span>Bejelentkezés</span>
        </button>
        <button class="navigombok" onclick="document.location='regiszt.html'">
            <span>Regisztráció</span>
        </button>
        <button class="navigombok" onclick="document.location='filmlist.php'">
            <span>Film listád</span>
        </button>
        <button class="navigombok" onclick="document.location='../backend/kijelentk.php'">
            <span>Kijelentkezés</span>
        </button>
    </nav>

    <main role="main">
        <div id="crapton">
            <h1>Elérhető Filmek</h1>
        </div>
        <div id="movieC" class="movieCard disabled">
            <div id="textContainer">
                <p id="vissza">❌</p>
                <div class="leirasdoboz">
                    <h3 id="cim">CÍM</h3>
                    <h3 id="kiadas"></h3>
                    <h3 id="rendezo">director</h3>
                    <h3 id="leiras">leírás//////////////////////////////////////////////////////////////////////////////////////////////</h3>
                    <br>
                    <h3 id="mufaj">bvasdhbjadfhbdafhb</h3>
                </div>
                <div id="hozzadob">
                    <span id="hozzaadas"> hozzáadás</span>
                </div>
            </div>
            <div id="imgContainer">
                <img id="imgB">
                <img id="imgC">
            </div>
        </div>
        <div>
            <ul class="moviescon" id="moviescon"></ul>
        </div>
    </main>
    <form name="automatic" action="../backend/filmadd.php" method="post" style="display: none">
        <input type="text" id="filmid" name="filmid">
    </form>
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
    } else {
    ?>
        <script>
            let nav = document.getElementsByClassName("navigombok");
            nav[3].style.display = "none";
            nav[2].style.display = "none";
        </script>
    <?php
    }
} else {
    ?>
    <script>
        let nav = document.getElementsByClassName("navigombok");
        nav[3].style.display = "none";
        nav[2].style.display = "none";
    </script>
<?php
}
?>