<!DOCTYPE html>
<html>
<head>
    <title>Sphere // Pluxum</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="/wordpress/wp-content/themes/zero/css/style_spherelog.css">
</head>
<body>
    <header id="encabezado">
        <div class="Logo-pluxum">
            <img src="/wordpress/wp-content/themes/zero/css\imageedit_2_3820430037.png" alt="Logo de Pluxum" class="Logo-pluxum">
        </div>
        <div class="Sphere-header">Sphere</div>
    </header>

<?php
    session_start();

    // Verificar si el usuario no está autenticado
    if (!isset($_SESSION['user_id'])) {
        // El usuario no está autenticado, mostrar el formulario de inicio de sesión
?>
    
    <div class="contenedor">

       <!-- Contenedor de inicio de sesión -->
        <div class="formulario">
            <div id="formulario-login" class="formulario-login">
                <h2>Bienvenido nuevamente, Inicia Sesión</h2>

                <?php
        // Mostrar mensaje de error si existe
        if (isset($_SESSION["error_message"])) {
            echo '<div class="error-message">' . $_SESSION["error_message"] . '</div>';
            unset($_SESSION["error_message"]); // Limpiar el mensaje de error después de mostrarlo
        }
        ?>
                <!-- Formulario de inicio de sesión aquí -->
                <form method="post" action="/wordpress/wp-content/themes/zero/procesar_inicio_sesion.php">
                    <input type="text" name="correo_o_telefono" placeholder="Correo electrónico" id="input-correo" required>
                    <div id="telefono-section" style="display: none;">
                        <select id="select-pais" name="select_pais">
                            <option value="+1">🇺🇸 Estados Unidos (+1)</option>
                            <option value="+44">🇬🇧 Reino Unido (+44)</option><!-- Agrega más opciones de países según tus necesidades -->
                        </select>
                        <input type="text" name="numero_telefono" placeholder="Número de teléfono" id="input-correo"> <!-- Cambia el id a "input-correo" -->
                    </div>
                    <input type="password" name="contrasena" placeholder="Contraseña" id="input-contrasena" required> <!-- Cambia el id a "input-contrasena" -->
                    <input type="submit" value="Iniciar sesión">
                </form>
                <p id="alternar-telefono">¿O usa tu número de teléfono?</p>
            </div>
            
        </div>

        <!-- Contenedor de registro -->
        <div class="formulario">
            <div id="formulario-registro" class="formulario-registro">
                      <!-- Formulario de registro aquí -->
                <form method="POST" action="/wordpress/wp-content/themes/zero/procesar_registro.php">
                    <div class="campo">
                        <label for="nombres">Nombres:</label>
                        <input type="text" name="nombres" id="nombres" placeholder="Ingresa tus nombres" required>
                    </div>
                    <div class="campo">
                        <label for="apellidos">Apellidos:</label>
                        <input type="text" name="apellidos" id="apellidos" placeholder="Ingresa tus apellidos" required>
                    </div>
                    <div class="campo">
                        <label for="correo">Correo electrónico:</label>
                        <input type="email" name="correo_electronico" id="correo" placeholder="Ingresa tu correo electrónico" required>
                        <?php
        // Mostrar mensaje de error si existe
        if (isset($_SESSION["error_message_reg"])) {
            echo '<div class="error-message">' . $_SESSION["error_message_reg"] . '</div>';
            unset($_SESSION["error_message_reg"]); // Limpiar el mensaje de error después de mostrarlo
        }
    ?>
                    </div>
                    <div class="campo">
                        <label for="fecha-nacimiento">Fecha de Nacimiento:</label>
                        <input type="date" name="fecha_nacimiento" id="fecha-nacimiento" required>
                    </div>
                    <div class="campo">
                        <select id="select-pais" name="pais" id="pais" required>
                            <option value="">Selecciona tu país</option>
                            <option value="Estados Unidos">Estados Unidos</option>
                            <option value="Reino Unido">Reino Unido</option>
                            <!-- Agrega más opciones de países según tus necesidades -->
                        </select>
                        <input type="text" name="telefono" id="telefono" placeholder="Ingresa tu número de teléfono" required>
                    </div>
                    
                    <div class="campo">
                        <label for="genero">Género:</label>
                        <select id="select-genero" name="genero" id="genero" required>
                            <option value="Masculino">Masculino</option>
                            <option value="Femenino">Femenino</option>
                            <option value="Otro">Otro</option>
                        </select>
                    </div>
                    <div class="campo">
                        <label for="contrasena">Contraseña:</label>
                        <input type="password" name="contrasena" id="contrasena" placeholder="Ingresa tu contraseña" required>
                    </div>
                    <input type="submit" value="Registrarse">
                </form>
            </div>
            
        </div>
    </div>

    <?php
    } else {
        // El usuario está autenticado, redirigirlo a la plataforma de usuarios
        header('Location: plataforma_usuarios.php'); // Reemplaza 'plataforma_usuarios.php' con la URL de tu plataforma de usuarios
        exit;
    }
    ?>

    <!-- Resto del contenido de tu página aquí -->
</body>
</html>

