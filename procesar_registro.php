<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

include_once 'config.php';
session_start();
// Verificar si se envió el formulario
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Conexión a la base de datos (reemplaza con tus propios datos de conexión)
    $DATABASE_HOST = 'localhost';
    $DATABASE_USER = 'root';
    $DATABASE_PASS = '';
    $DATABASE_NAME = 'picb9yvbk45s5vtke8';
    // Conexión base de datos.
    $conexion = mysqli_connect($DATABASE_HOST, $DATABASE_USER, $DATABASE_PASS, $DATABASE_NAME);
    if (mysqli_connect_errno()) {
        // Si hay un error con la conexión, muestra el mensaje de error
        exit('Fallo en conexión de MySQL: ' . mysqli_connect_error());
    }



    // Continúa con el resto del código para insertar el nuevo usuario


    // Recopilar datos del formulario y aplicar validación (aquí puedes agregar validación adicional)
    $nombres = mysqli_real_escape_string($conexion, $_POST["nombres"]);
    $apellidos = mysqli_real_escape_string($conexion, $_POST["apellidos"]);
    $correo_electronico = filter_var($_POST["correo_electronico"], FILTER_VALIDATE_EMAIL);
    $fecha_nacimiento = $_POST["fecha_nacimiento"];
    $pais = mysqli_real_escape_string($conexion, $_POST["pais"]);
    $telefono = mysqli_real_escape_string($conexion, $_POST["telefono"]);
    $genero = $_POST["genero"];
    $contrasena = $_POST["contrasena"];

    // Validación adicional de los datos aquí (puedes agregar más validaciones según tus necesidades)

    // Hash de la contraseña con Bcrypt
    $hashed_password = password_hash($contrasena, PASSWORD_BCRYPT);

    // Generar un ID único para el nuevo usuario
    $user_idunsp = uniqid();

    // Consulta SQL preparada para la inserción en la tabla users_not_verified
    $sql = "INSERT INTO users_not_verified(user_idunsp, user_namesp, user_lastnsp, user_emailsp, user_birthsp, user_countrysp, user_phonesp, user_gensp, user_passsp) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

    // Preparar la consulta
    $stmt = $conexion->prepare($sql);
    $stmt->bind_param("sssssssss", $user_idunsp, $nombres, $apellidos, $correo_electronico, $fecha_nacimiento, $pais, $telefono, $genero, $hashed_password);
    // Verificar si el correo electrónico ya está registrado en ambas tablas
    $sql_check_email = "SELECT * FROM users_not_verified WHERE user_emailsp = ?";
    $stmt_check_email = $conexion->prepare($sql_check_email);
    $stmt_check_email->bind_param("s", $correo_electronico);
    $stmt_check_email->execute();
    $stmt_check_email->store_result();

    $sql_check_email_verified = "SELECT * FROM users_verified WHERE user_emailsp = ?";
    $stmt_check_email_verified = $conexion->prepare($sql_check_email_verified);
    $stmt_check_email_verified->bind_param("s", $correo_electronico);
    $stmt_check_email_verified->execute();
    $stmt_check_email_verified->store_result();

    if ($stmt_check_email->num_rows > 0 || $stmt_check_email_verified->num_rows > 0) {
        $_SESSION["error_message_reg"] = "Este correo electrónico ya está registrado.";
        var_dump($_SESSION["error_message_reg"]);
        header('Location: /wordpress/wp-content/themes/zero/index.php'); // Reemplaza con la ruta correcta a tu página de registro
        exit;
    }
    
    // Ejecutar la consulta
    if ($stmt->execute()) {
        echo "Registro exitoso. ¡Bienvenido!";
        
        // Puedes redirigir al usuario a una página de inicio de sesión u otra página aquí
        header('Location: /wordpress/wp-content/themes/zero/user_panel.php');
        exit; 
    } else {
        echo "Error al registrar el usuario: " . $stmt->error;
    }

    // Cerrar la conexión y liberar recursos
    $stmt->close();
    $conexion->close();
}
?>
