<?php
session_start();
include("db_connection.php");

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $user_idunsp = $_SESSION['user_idunsp'];
    $nuevoNombre = $_POST['nuevoNombre'];
    $nuevoApellido = $_POST['nuevoApellido'];
    $nuevoCorreo = $_POST['nuevoCorreo'];
    $nuevoFecha = $_POST['nuevoFecha'];
    $nuevoPais = $_POST['nuevoPais'];
    $nuevoGenero = $_POST['nuevoGenero'];
    $nuevoTelefono = $_POST['nuevoTelefono'];
    $nuevoPassword = $_POST['nuevoPassword'];

    if (empty($user_idunsp)) {
        echo "Error: Usuario no válido.";
    } else {

        $sql = "SELECT * FROM users_not_verified WHERE user_idunsp = ?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("i", $user_idunsp);
        $stmt->execute();
        $resultado = $stmt->get_result();

        if ($resultado->num_rows > 0) {
            // Usuario encontrado en users_not_verified
            // Preparar y ejecutar la consulta SQL para actualizar en users_not_verified
            $sql = "UPDATE users_not_verified SET ";
            $types = "";
            $params = array();

            if (!empty($nuevoNombre)) {
                $sql.= "user_namesp = ?, ";
                $types .= "s";
                $params[] = $nuevoNombre;
            }

            // Repite el proceso para otros campos según sea necesario
    
            if (!empty($nuevoApellido)) {
                $sql .= "user_lastnsp = ?, ";
                $types .= "s";
                $params[] = $nuevoApellido;
            }
    
            if (!empty($nuevoCorreo) && filter_var($nuevoCorreo, FILTER_VALIDATE_EMAIL)) {
                $sql .= "user_emailsp = ?, ";
                $types .= "s";
                $params[] = $nuevoCorreo;
            }
    
            if (!empty($nuevoFecha)) {
                $sql .= "user_birthsp = ?, ";
                $types .= "s";
                $params[] = $nuevoFecha;
            }
    
            if (!empty($nuevoPais)) {
                $sql .= "user_countrysp = ?, ";
                $types .= "s";
                $params[] = $nuevoPais;
            }
    
            if (!empty($nuevoGenero)) {
                $sql .= "user_gensp = ?, ";
                $types .= "s";
                $params[] = $nuevoGenero;
            }
    
            if (!empty($nuevoTelefono) && ctype_digit($nuevoTelefono)) {
                $sql .= "user_phonesp = ?, ";
                $types .= "s";
                $params[] = $nuevoTelefono;
            }
    
            // Si hay una nueva contraseña, encriptarla y agregarla a la consulta
            if (!empty($nuevoPassword)) {
                $hashNuevaPassword = password_hash($nuevoPassword, PASSWORD_DEFAULT);
                $sql .= "user_passsp = ?, ";
                $types .= "s";
                $params[] = $hashNuevaPassword;
            }

            
        }
        else {
            $sql = "SELECT * FROM users_verified WHERE user_idunsp = ?";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("i", $user_idunsp);
            $stmt->execute();
            $resultado = $stmt->get_result();
            if ($resultado->num_rows > 0) {
                // Usuario encontrado en users_verified
                // Preparar y ejecutar la consulta SQL para actualizar en users_verified
                $sql = "UPDATE users_verified SET ";
                $types = "";
                $params = array();
                if (!empty($nuevoNombre)) {
                    $sql .= "user_namesp = ?, ";
                    $types .= "s";
                    $params[] = $nuevoNombre;
                }
        
                if (!empty($nuevoApellido)) {
                    $sql .= "user_lastnsp = ?, ";
                    $types .= "s";
                    $params[] = $nuevoApellido;
                }
        
                if (!empty($nuevoCorreo) && filter_var($nuevoCorreo, FILTER_VALIDATE_EMAIL)) {
                    $sql .= "user_emailsp = ?, ";
                    $types .= "s";
                    $params[] = $nuevoCorreo;
                }
        
                if (!empty($nuevoFecha)) {
                    $sql .= "user_birthsp = ?, ";
                    $types .= "s";
                    $params[] = $nuevoFecha;
                }
        
                if (!empty($nuevoPais)) {
                    $sql .= "user_countrysp = ?, ";
                    $types .= "s";
                    $params[] = $nuevoPais;
                }
        
                if (!empty($nuevoGenero)) {
                    $sql .= "user_gensp = ?, ";
                    $types .= "s";
                    $params[] = $nuevoGenero;
                }
        
                if (!empty($nuevoTelefono) && ctype_digit($nuevoTelefono)) {
                    $sql .= "user_phonesp = ?, ";
                    $types .= "s";
                    $params[] = $nuevoTelefono;
                }
        
                // Si hay una nueva contraseña, encriptarla y agregarla a la consulta
                if (!empty($nuevoPassword)) {
                    $hashNuevaPassword = password_hash($nuevoPassword, PASSWORD_DEFAULT);
                    $sql .= "user_passsp = ?, ";
                    $types .= "s";
                    $params[] = $hashNuevaPassword;
                }
        
                // Eliminar la coma y el espacio final de la consulta SQL
                $sql = rtrim($sql, ", ");
        
                // Agregar la condición WHERE para el usuario específico
                $sql .= " WHERE user_idunsp = ?";
                $types .= "i";
                $params[] = $user_idunsp;
            }


        // Preparar y ejecutar la consulta
        if ($stmt = $conn->prepare($sql)) {
            // Asignar los tipos y parámetros dinámicamente
            $stmt->bind_param($types, ...$params);

            if ($stmt->execute()) {
                echo "Datos actualizados correctamente en la base de datos.";
            } else {
                echo "Error al ejecutar la consulta: " . $stmt->error;
            }
            

        }
        $stmt->close();
    }
       
        } 
    
} else {
    echo "Solicitud no válida.";
}

// Cerrar la conexión al finalizar
$conn->close();
?>
