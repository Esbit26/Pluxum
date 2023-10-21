<?php
session_start();

function cerrarSesion() {
    // Destruye todas las variables de sesión
    session_unset();
    
    // Destruye la sesión
    session_destroy();
    
    // Redirige a la página de inicio de sesión o a donde desees que vaya el usuario después de cerrar sesión
    header("Location: /wordpress/wp-content/themes/zero/index.php"); // Cambia "inicio_sesion.php" por la página a la que quieres redirigir al usuario
    exit();
}

// Para utilizar la función, simplemente llámala en tu código cuando quieras cerrar sesión
// cerrarSesion();
?>
