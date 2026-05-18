<?php
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
