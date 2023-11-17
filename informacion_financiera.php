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
        $getUserDetailsQuery = "SELECT * FROM users_verified WHERE user_idunsp = ?";
        $getUserDetailsStmt = $conn->prepare($getUserDetailsQuery);
        $getUserDetailsStmt->bind_param("i", $user_idunsp);
        $getUserDetailsStmt->execute();
        $userDetailsResult = $getUserDetailsStmt->get_result();
        $userDetailsRow = $userDetailsResult->fetch_assoc();

        // Asignar los valores a las variables correspondientes
        $cedula = $userDetailsRow["user_idunsp"];
        $direccion = $userDetailsRow["user_addresssp"];
        $tipoCuenta = $userDetailsRow["user_typeaccsp"];
        $cuentaBancaria = $userDetailsRow["user_accountsp"];
        $banco = $userDetailsRow["user_banksp"];
        $swift = $userDetailsRow["user_swiftsp"];
        $walletCripto = $userDetailsRow["user_walletsp"];
        
        echo '
        <section id="informacion-personal">
                                <h2 class="center-text">Informacion financiera</h2>
                                <div class="info-grid">
                                    <div class="info-item">
                                        <label for="nombre">Numero de identificación:</label>
                                        <span id="nombreSpan">' . $cedula . '</span>
                                        <input type="text" id="nombreInput" class="input-edit" style="display:none">
                                    </div>
                                    <div class="info-item">
                                    <label for="nombre">Dirección:</label>
                                    <span id="nombreSpan">' . $direccion . '</span>
                                    <input type="text" id="nombreInput" class="input-edit" style="display:none">
                                </div>
                                <div class="info-item">
                                <label for="nombre">Tipo de cuenta:</label>
                                <span id="nombreSpan">' . $tipoCuenta . '</span>
                                <input type="text" id="nombreInput" class="input-edit" style="display:none">
                                </div>

                                <div class="info-item">
                                <label for="nombre">Numero de Cuenta:</label>
                                <span id="nombreSpan">' . $cuentaBancaria . '</span>
                                <input type="text" id="nombreInput" class="input-edit" style="display:none">
                                </div>

                                <div class="info-item">
                                <label for="nombre">Nombre del banco:</label>
                                <span id="nombreSpan">' . $banco . '</span>
                                <input type="text" id="nombreInput" class="input-edit" style="display:none">
                                </div>

                                <div class="info-item">
                                <label for="nombre">Codigo SWIFT:</label>
                                <span id="nombreSpan">' . $swift . '</span>
                                <input type="text" id="nombreInput" class="input-edit" style="display:none">
                                </div>

                                <div class="info-item">
                                <label for="nombre">Wallet USDT (TRC20):</label>
                                <span id="nombreSpan">' . $walletCripto . '</span>
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