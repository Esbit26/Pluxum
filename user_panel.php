<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sphere - Pluxum</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
    <link rel="stylesheet" href="css/user-panel.css">
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    
    
</head>

<body>
    <?php
    session_start();

    // Verificar si el usuario no está autenticado
    if (!isset($_SESSION['user_idunsp'])) {
        // El usuario no está autenticado, redirigirlo a la página de inicio de sesión
        header('Location: /wordpress/wp-content/themes/zero/index.php'); // Reemplaza 'login.php' con la URL de tu página de inicio de sesión
        exit;
    }
    ?>


    <header class="black-header">
        <div class="Sphere-header">Sphere</div>
        <button id="abrir" class="abrir-menu"><i class="bi bi-list"></i></button>
        <nav class="nav" id="nav">
            <button class="cerrar-menu" id="cerrar"><i class="bi bi-x"></i></button>
            <ul class="nav-list">
                <li><a href="#" id="perfil-btn" onclick="cargarPerfil()">Perfil <i class="bi bi-person-circle"></i></a></li>
                <li><a href="#">Cartera <i class="bi bi-wallet2"></i></a></li>
                <li><a href="#">Historial <i class="bi bi-clock-history"></i></a></li>
                <li><a href="#">Ayuda</i></a></li>
                <button class="cerrar-sesion" id="sesion-fin" onclick="cerrarSesion()">Salir <i class="bi bi-box-arrow-right"></i></button>
        
             </ul>
            </nav>
    </header>
    <main>
    <div class="content"></div>
</main>
    <script src="js/script.js"></script>
</body>

</html>
