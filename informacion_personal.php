<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Formulario de Edición</title>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="css/perfil_estilo.css">

</head>

<body>
    <!-- INICIO CONEXION -->
<?php
    session_start();
    include("db_connection.php");

    // Verificar la sesión del usuario (código de autenticación)
    if (!isset($_SESSION['user_idunsp'])) {
        echo "Usuario no encontrado";
    } else {
        $user_idunsp = $_SESSION['user_idunsp'];

        // Consultar en la tabla users_not_verified
        $sql = "SELECT user_namesp, user_lastnsp, user_birthsp, user_emailsp, user_passsp, user_countrysp, user_gensp, user_phonesp FROM users_not_verified WHERE user_idunsp = ?";

        // Preparar la consulta
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("i", $user_idunsp); // "i" indica un valor entero

        // Ejecutar la consulta
        $stmt->execute();

        // Obtener resultados
        $resultado = $stmt->get_result();

        // Procesar los resultados y mostrar el perfil del usuario
        if ($resultado->num_rows > 0) {
            $row = $resultado->fetch_assoc();
            $nombre = $row["user_namesp"];
            $correo = $row["user_emailsp"];
            $apellido = $row["user_lastnsp"];
            $fechanac = $row ["user_birthsp"];
            $pais = $row ["user_countrysp"];
            $genero = $row ["user_gensp"];
            $telefono = $row ["user_phonesp"];
            // También puedes obtener otros campos aquí si es necesario
        } else {
            echo "Usuario no encontrado";
        }

        // Cerrar la conexión
        $stmt->close();
        $conn->close();
    }
    ?>
    <!-- FIN CONEXION -->


    <!-- FORMULARIO EDICION INFORMACION PERSONAL -->

    
<section id="informacion-personal">
            <h2 class="center-text">Datos Personales</h2>
            <div class="info-grid">
                <div class="info-item">
                    <label for="nombre">Nombre:</label>
                    <span id="nombreSpan"><?php echo $nombre; ?></span>
                    <input type="text" id="nombreInput" class="input-edit" style="display:none">
                </div>
                <div class="info-item">
                    <label for="apellido">Apellido:</label>
                    <span id="apellidoSpan"><?php echo $apellido; ?></span>
                    <input type="text" id="apellidoInput" class="input-edit" style="display:none">
                </div>
                <div class="info-item">
                    <label for="correo">Correo Electrónico:</label>
                    <span id="correoSpan"><?php echo $correo; ?></span>
                    <input type="email" id="correoInput" class="input-edit" style="display:none">
                </div>
                <div class="info-item">
                    <label for="fechanac">Fecha de Nacimiento:</label>
                    <span id="fechanacSpan"><?php echo $fechanac; ?></span>
                    <input type="date" id="fechanacInput" class="input-edit" style="display:none">
                </div>
                <div class="info-item">
                    <label for="pais">País:</label>
                    <span id="paisSpan"><?php echo $pais; ?></span>
                    <select id="paisSelect" class="input-edit" style="display:none">
                    </select>
                </div>
                <div class="info-item">
                    <label for="genero">Género:</label>
                    <span id="generoSpan"><?php echo $genero; ?></span>
                    <select  id="generoSelect" class="input-edit" style="display:none"> </select>
                </div>

                <div class="info-item">
                
                <label for="telefono">Teléfono</label>
                <span id="telefonoSpan"><?php echo $telefono ?></span>
                <input type="text" id="telefonoInput" class="input-edit" style="display:none">
                
                </div>
                
                <div class="info-item">
                <label for="password">Contraseña:</label>
                <span id="passwordSpan" style="font-family: monospace;">***********</span>
                <input type="password" id="passwordInput" class="input-edit" style="display:none">
                
                </div>
            </div>

            <button id="editar-btn" onclick="habilitarEdicion()">Editar</button>
            <button id="guardar-btn" style="display: none;" onclick="guardarNombre()">Guardar</button>

        </section>


        <!-- FIN INFORMACION PERSONAL-->


        </body>
</html>