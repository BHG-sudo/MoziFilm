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
    </nav>
    <main role="main">
        <div id="crapton">
            <h1>Elérhető Filmek</h1>
        </div>
        <div>
            <ul class="moviescon" id="moviescon">

            </ul>
        </div>
    </main>
    <script>
    let container = document.getElementById("moviescon");
    for (const E of adatok) {
        let moviecon = document.createElement("li");
        moviecon.id = "con"+E["id"];
        console.log(moviecon);
        container.appendChild(moviecon);
        let moviediv = document.createElement("div");
        moviediv.id = "div"+E["id"];
        moviediv.classList.toggle("moviecon");
        moviecon.appendChild(moviediv);
        let movieimg = document.createElement("img");
        movieimg.id = "img"+E["id"];
        movieimg.src = ""+E["borito"]+"";
        moviediv.appendChild(movieimg);
    }
</script>
</body>

</html>