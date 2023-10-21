<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "picb9yvbk45s5vtke8";

$conn = new mysqli($servername, $username, $password, $database);

if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}
?>
