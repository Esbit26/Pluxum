<?php
// Database credentials
define('DB_SERVER', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_NAME', 'picb9yvbk45s5vtke8');

// Attempt to connect to MySQL database
$conexion = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);

// Check connection
if ($conexion === false) {
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
?>
