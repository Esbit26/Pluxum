<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Formulario de informacion Financiera</title>
    <link rel="stylesheet" href="css/perfil_estilo.css">

</head>

<body>
    <!-- INICIO CONEXION -->
    <?php
session_start();
include("db_connection.php");

if (isset($_SESSION['user_idunsp'])) {
    $user_idunsp = $_SESSION['user_idunsp'];

    // Verificar si el usuario ya está en users_verified
    $checkUserQuery = "SELECT COUNT(*) as count FROM users_verified WHERE user_idunsp = ?";
    $checkUserStmt = $conn->prepare($checkUserQuery);
    $checkUserStmt->bind_param("i", $user_idunsp);
    $checkUserStmt->execute();
    $checkUserResult = $checkUserStmt->get_result();
    $row = $checkUserResult->fetch_assoc();

    // Si el usuario no está en users_verified, imprime el botón
    if ($row['count'] <= 0) {
        echo '<div class="centered-button">
                <button id="verificar-btn" onclick="transferirUsuario()">Añade tu información financiera</button>
              </div>';
    } else {
        $getUserDetailsQuery = "SELECT user_idsp,user_addresssp, user_typeaccsp, user_accountsp, user_banksp, user_walletsp FROM users_verified WHERE user_idunsp = ?";
        $getUserDetailsStmt = $conn->prepare($getUserDetailsQuery);
        $getUserDetailsStmt->bind_param("i", $user_idunsp);
        $getUserDetailsStmt->execute();
        $userDetailsResult = $getUserDetailsStmt->get_result();
        $userDetailsRow = $userDetailsResult->fetch_assoc();

        // Asignar los valores a las variables correspondientes
        $cedula = $userDetailsRow["user_idsp"];
        $direccion = $userDetailsRow["user_addresssp"];
        $tipoCuenta = $userDetailsRow["user_typeaccsp"];
        $cuentaBancaria = $userDetailsRow["user_accountsp"];
        $banco = $userDetailsRow["user_banksp"];
        $walletCripto = $userDetailsRow["user_walletsp"];
        
        echo '
        <section id="informacion-personal">
            <h2 class="center-text">Informacion financiera</h2>
            <div class="info-grid">
                <div class="info-item">
                    <label for="nombre">Nombre:</label>
                    <span id="nombreSpan">' . $nombre . '</span>
                    <input type="text" id="nombreInput" class="input-edit" style="display:none">
                </div>
                
                <button id="editardat-btn" onclick="habilitarDatos()">Editar</button>
                <button id="guardardat-btn" style="display: none;" onclick="guardarDatos()">Guardar</button>
            </div>
        </section>';

    }
} else {
    echo "Usuario no autenticado.";
}
?>



        <!-- FIN INFORMACION FINANCIERA-->


        </body>
</html>