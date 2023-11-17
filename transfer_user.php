<?php
// Incluir el archivo de conexión a la base de datos
include("db_connection.php");

// Iniciar la sesión (si no se ha hecho antes)
session_start();

// Verificar si el usuario está autenticado (esto puede variar según tu sistema de autenticación)
if (!isset($_SESSION['user_idunsp'])) {
    echo "Usuario no autenticado";
} else {
    // Obtener el ID del usuario de la sesión
    $user_idunsp = $_SESSION['user_idunsp'];

    // Consultar el usuario en la tabla users_not_verified
    $consulta = "SELECT * FROM users_not_verified WHERE user_idunsp = ?";
    $stmt = $conn->prepare($consulta);
    $stmt->bind_param("i", $user_idunsp);
    $stmt->execute();
    $resultado = $stmt->get_result();

    // Verificar si se encontró el usuario
    if ($resultado->num_rows > 0) {
        // Obtener el valor de las columnas y otros datos del usuario
        $usuario = $resultado->fetch_assoc();
        $user_idunsp = $usuario['user_idunsp'];
        $nombre = $usuario['user_namesp'];
        $apellido = $usuario['user_lastnsp'];
        $fechanac = $usuario['user_birthsp'];
        $correo = $usuario['user_emailsp'];
        $contrasena = $usuario['user_passsp']; // Contraseña ya encriptada
        $pais = $usuario['user_countrysp'];
        $telefono = $usuario['user_phonesp'];
        $genero = $usuario['user_gensp'];
        $intentos_fallidos = $usuario['intentos_fallidos'];

        // Insertar el usuario en la tabla users_verified
        $insertar = "INSERT INTO users_verified (user_idunsp, user_namesp, user_lastnsp, user_birthsp, user_emailsp, user_passsp, user_countrysp, user_phonesp, user_gensp, intentos_fallidos) 
                    VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        $stmt_insert = $conn->prepare($insertar);
        $stmt_insert->bind_param("issssssssi", $user_idunsp, $nombre, $apellido, $fechanac, $correo, $contrasena, $pais, $telefono, $genero, $intentos_fallidos);

        if ($stmt_insert->execute()) {
            // Eliminar el usuario de la tabla users_not_verified
            $eliminar = "DELETE FROM users_not_verified WHERE user_idunsp = ?";
            $stmt_eliminar = $conn->prepare($eliminar);
            $stmt_eliminar->bind_param("i", $user_idunsp);
            $stmt_eliminar->execute();

            // Enviar mensaje de éxito a la consola del navegador
            echo '<script>console.log("Usuario transferido exitosamente.");</script>';
            echo '<script>window.location.href = "user_panel.php";</script>';

        } else {
            // Enviar mensaje de error a la consola del navegador
            echo '<script>console.log("Error al transferir el usuario.");</script>';
        }

        // Cerrar las declaraciones y la conexión
        $stmt_insert->close();
        $stmt_eliminar->close();
    } else {
        // Enviar mensaje de error a la consola del navegador
        echo '<script>console.log("Usuario no encontrado en la tabla users_not_verified.");</script>';
    }

    // Cerrar la conexión
    $stmt->close();
    $conn->close();
}
?>
