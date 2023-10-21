    <?php
    session_start();
    include_once 'config.php';

    // Verificar si se envió el formulario
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        // Conexión a la base de datos (reemplaza con tus propios datos de conexión)
        $DATABASE_HOST = 'localhost';
        $DATABASE_USER = 'root';
        $DATABASE_PASS = '';
        $DATABASE_NAME = 'picb9yvbk45s5vtke8';

        // Conexión base de datos.
        $conexion = mysqli_connect($DATABASE_HOST, $DATABASE_USER, $DATABASE_PASS, $DATABASE_NAME);

        // Verificar la conexión
        if (!$conexion) {
            die('Fallo en conexión de MySQL: ' . mysqli_connect_error());
        }

        // Recopilar datos del formulario
        $correo_o_telefono = $_POST["correo_o_telefono"];
        $contrasena = $_POST["contrasena"];

        // Verificar el número de intentos fallidos almacenados en la sesión
        if (!isset($_SESSION["intentos_fallidos"])) {
            $_SESSION["intentos_fallidos"] = 0;
        }

        // Verificar si se ha excedido el número máximo de intentos fallidos (6 intentos)
        if ($_SESSION["intentos_fallidos"] >= 6) {
            echo "Has excedido el número máximo de intentos fallidos. Tu cuenta ha sido bloqueada temporalmente.";
            exit();
        }

        // Consulta SQL para buscar el usuario en ambas tablas
        $sql = "SELECT user_idunsp, user_passsp FROM users_not_verified WHERE user_emailsp = ? OR user_phonesp = ?";
        $stmt = mysqli_prepare($conexion, $sql);
        mysqli_stmt_bind_param($stmt, "ss", $correo_o_telefono, $correo_o_telefono);
        mysqli_stmt_execute($stmt);
        $result = mysqli_stmt_get_result($stmt);

        if (mysqli_num_rows($result) == 0) {
            // Si el usuario no se encontró en users_not_verified, busca en users_verified
            $sql = "SELECT user_idunsp, user_passsp FROM users_verified WHERE user_emailsp = ? OR user_phonesp = ?";
            $stmt = mysqli_prepare($conexion, $sql);
            mysqli_stmt_bind_param($stmt, "ss", $correo_o_telefono, $correo_o_telefono);
            mysqli_stmt_execute($stmt);
            $result = mysqli_stmt_get_result($stmt);
        }

        if (mysqli_num_rows($result) == 1) {
            $row = mysqli_fetch_assoc($result);

            if (password_verify($contrasena, $row["user_passsp"])) {
                ob_clean();
                // Almacena el ID del usuario en la sesión
                $_SESSION["user_idunsp"] = $row["user_idunsp"];
                // Redirige al usuario a la página de inicio o realiza otras acciones
                header('Location: /wordpress/wp-content/themes/zero/user_panel.php');
                exit;
            } else {
                $_SESSION["intentos_fallidos"]++;
                $error_message = "Usuario o contraseña incorrecta. Intento fallido.";
            }
        } else {
                $_SESSION["intentos_fallidos"]++;
                $error_message = "Usuario o contraseña incorrecta. Intento fallido.";
        }

        // Cerrar la conexión
        mysqli_stmt_close($stmt);
        mysqli_close($conexion);
        // Enviar el mensaje de error de vuelta al formulario
        $_SESSION["error_message"] = $error_message;
        header('Location: /wordpress/wp-content/themes/zero/index.php');
        exit;
    }
    ?>
