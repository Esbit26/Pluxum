<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Formulario de Edición</title>
    <script>
        function habilitarEdicion() {
            document.getElementById('nombre').removeAttribute('readonly');
            document.getElementById('guardar-btn').style.display = 'block';
            document.getElementById('editar-btn').style.display = 'none';
        }

        function guardarNombre() {
            var nuevoNombre = document.getElementById('nombre').value;
            // Aquí puedes usar AJAX para enviar el nuevo nombre al servidor y actualizar la base de datos
            // Ejemplo de AJAX con JavaScript puro:
            // var xhr = new XMLHttpRequest();
            // xhr.open('POST', 'guardar.php', true);
            // xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
            // xhr.onload = function() {
            //     // Manejar la respuesta del servidor si es necesario
            // };
            // xhr.send('nombre=' + nuevoNombre);
        }
    </script>
</head>
<body>
    <label for="nombre">Nombre:</label>
    <input type="text" id="nombre" name="nombre" value="<?php echo $nombre; ?>" readonly>

    <button id="editar-btn" onclick="habilitarEdicion()">Editar</button>
    <button id="guardar-btn" style="display: none;" onclick="guardarNombre()">Guardar</button>
</body>
</html>
