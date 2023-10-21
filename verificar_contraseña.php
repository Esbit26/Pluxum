<?php
session_start();
include("db_connection.php");

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $confirmarPassword = $_POST['confirmarPassword'];

    // Obtener la contraseña almacenada en la base de datos para el usuario actual (reemplázalo con tu lógica de base de datos)
    $user_idunsp = $_SESSION['user_idunsp']; // Asegúrate de que $user_idunsp tenga el valor correcto
    $sql = "SELECT user_passsp FROM users_not_verified WHERE user_idunsp = ?";
    if ($stmt = $conn->prepare($sql)) {
        $stmt->bind_param("i", $user_idunsp);
        if ($stmt->execute()) {
            $stmt->bind_result($hashedPassword);
            if ($stmt->fetch()) {
                // Verificar si la contraseña proporcionada coincide con la contraseña almacenada
                if (password_verify($confirmarPassword, $hashedPassword)) {
                    // Contraseña correcta
                    http_response_code(200); // Código de estado 200 (éxito)
                } else {
                    // Contraseña incorrecta
                    http_response_code(401); // Código de estado 401 (no autorizado)
                }
            }
        }
        $stmt->close();
    }
    $conn->close();
}
?>
