<?php
session_start();

// Destruye todas las variables de sesión
session_unset();

// Destruye la sesión
session_destroy();

// Redirige al usuario a la página de inicio de sesión
header("Location: /wordpress/wp-content/themes/zero/index.php"); // Reemplaza con la URL correcta de tu página de inicio de sesión
exit();
?>
