<?php

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



if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
        ?>
<script>
    const filmdata = [[], [], [], [], [], [], []];
        filmdata[0] = <?php echo $row["id"] ?>;
        filmdata[1] = "<?php echo $row["borito"] ?>";
        filmdata[2] = "<?php echo $row["cim"] ?>";
        filmdata[3] = "<?php echo $row["rendezo"] ?>";
        filmdata[4] = <?php echo $row["kiadas"] ?>;
        filmdata[5] = "<?php echo $row["mufaj"] ?>";
        filmdata[6] = <?php echo $row["ido"] ?>;

</script>
<?php
    }
}
?>
<script>
    console.log(filmdata);
</script>