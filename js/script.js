const nav = document.querySelector("#nav");
const abrir = document.querySelector("#abrir");
const cerrar = document.querySelector("#cerrar");

abrir.addEventListener("click", () => {
    nav.classList.add("visible");
})

cerrar.addEventListener("click", () => {
    nav.classList.remove("visible");
})

// CERRAR SESION

function cerrarSesion() {
    var xhr = new XMLHttpRequest();
    xhr.open("GET", "cerrar_sesion.php", true);
    xhr.onreadystatechange = function() {
        if (xhr.readyState == 4 && xhr.status == 200) {
            // La solicitud se completó y la función de cerrar sesión se ejecutó en el servidor
            console.log("Sesión cerrada exitosamente.");
            window.location.href = " /wordpress/wp-content/themes/zero/index.php";
            // Puedes hacer algo más aquí si es necesario
        }
    };
    xhr.send();
}


// CARGAR PERFIL

function cargarPerfil() {
    console.log("Cargar perfil llamado"); // Para verificar si la función se está llamando
    var xhr = new XMLHttpRequest();
    xhr.open("GET", "perfil.php", true);
    xhr.onreadystatechange = function() {
        console.log(xhr.readyState); // Para verificar el estado de la solicitud
        console.log(xhr.status); // Para verificar el código de estado de la respuesta
        if (xhr.readyState == 4 && xhr.status == 200) {
            document.querySelector('.content').innerHTML = xhr.responseText;
        }
    };
    xhr.send();
}

document.querySelector('#perfil-btn').addEventListener('click', cargarPerfil);




// SCRIPTS PARA PERFIL
function informacionPersonal() {
    console.log("Cargar perfil llamado"); // Para verificar si la función se está llamando
    var xhr = new XMLHttpRequest();
    xhr.open("GET", "informacion_personal.php", true);
    xhr.onreadystatechange = function() {
        console.log(xhr.readyState); // Para verificar el estado de la solicitud
        console.log(xhr.status); // Para verificar el código de estado de la respuesta
        if (xhr.readyState == 4 && xhr.status == 200) {
            document.querySelector('.content-p').innerHTML = xhr.responseText;
        }
    };
    xhr.send();
}

document.querySelector('#perfil-btn').addEventListener('click', informacionPersonal);





// SCRIPTS DE EDICION
function llenarListaConBanderas() {
    const selectPais = document.getElementById('paisSelect');
    selectPais.innerHTML = ''; // Limpiar opciones antiguas

    // Obtener la lista de países de la API y ordenarlos alfabéticamente
    fetch('https://restcountries.com/v3.1/all')
        .then(response => response.json())
        .then(data => {
            // Utilizar un objeto para evitar duplicados
            const paisesUnicos = {};

            // Ordenar los países alfabéticamente por nombre común y evitar duplicados
            data.sort((a, b) => a.name.common.localeCompare(b.name.common)).forEach(country => {
                const nombreComun = country.name.common;
                
                // Verificar si el país ya ha sido agregado
                if (!paisesUnicos[nombreComun]) {
                    const option = document.createElement('option');
                    option.value = nombreComun; // Establecer el valor del país
                    option.textContent = nombreComun; // Establecer el texto del país

                    // Establecer la URL de la bandera como fondo de la opción
                    option.style.backgroundImage = `url(${country.flags.png})`;

                    // Adjuntar la opción al select
                    selectPais.appendChild(option);

                    // Agregar el país al objeto de países únicos para evitar duplicados
                    paisesUnicos[nombreComun] = true;
                }
            });
        })
        .catch(error => {
            console.error('Error al obtener la lista de países:', error);
        });
}

function llenarGenero() {
    const generoSelect = document.getElementById('generoSelect');
    const generos = ['Masculino', 'Femenino', 'Otro'];

    generos.forEach(genero => {
        const option = document.createElement('option');
        option.value = genero;
        option.textContent = genero;
        generoSelect.appendChild(option);
    });
}


    function habilitarEdicion() {
        llenarListaConBanderas();
        llenarGenero();
        var nombreSpan = document.getElementById('nombreSpan');
        var nombreInput = document.getElementById('nombreInput');
        var apellidoSpan = document.getElementById('apellidoSpan');
        var apellidoInput = document.getElementById('apellidoInput');
        var correoSpan = document.getElementById('correoSpan');
        var correoInput = document.getElementById('correoInput');
        var fechanacSpan = document.getElementById('fechanacSpan');
        var fechanacInput = document.getElementById('fechanacInput');
        var paisSpan = document.getElementById('paisSpan');
        var paisSelect = document.getElementById('paisSelect');
        var generoSpan = document.getElementById('generoSpan');
        var generoSelect = document.getElementById('generoSelect');
        var telefonoSpan = document.getElementById('telefonoSpan');
        var telefonoInput = document.getElementById('telefonoInput');
        var passwordSpan = document.getElementById('passwordSpan');
        var passwordInput = document.getElementById('passwordInput');
        var editarBtn = document.getElementById('editar-btn');
        var guardarBtn = document.getElementById('guardar-btn');

        nombreSpan.style.display = 'none';
        nombreInput.style.display = 'block';
        apellidoSpan.style.display = 'none';
        apellidoInput.style.display = 'block';
        correoSpan.style.display = 'none';
        correoInput.style.display = 'block';
        fechanacSpan.style.display = 'none';
        fechanacInput.style.display = 'block';
        paisSpan.style.display = 'none';
        paisSelect.style.display = 'block';
        generoSpan.style.display = 'none';
        generoSelect.style.display = 'block';
        telefonoSpan.style.display = 'none';
        telefonoInput.style.display = 'block';
        passwordSpan.style.display = 'none';
        passwordInput.style.display = 'block';
        nombreInput.value = nombreSpan.textContent;
        apellidoInput.value = apellidoSpan.textContent;
        correoInput.value = correoSpan.textContent;
        fechanacInput.value = fechanacSpan.textContent;
        telefonoInput.value = telefonoSpan.textContent;

        var paisTexto = paisSpan.textContent.trim();
    if (!Array.from(paisSelect.options).some(option => option.value.trim() === paisTexto)) {
        var option = document.createElement('option');
        option.value = paisTexto;
        option.textContent = paisTexto;
        paisSelect.appendChild(option);
    }
    paisSelect.value = paisTexto;

    var generoTexto = generoSpan.textContent.trim();
    if (!Array.from(generoSelect.options).some(option => option.value.trim() === generoTexto)) {
        var option2 = document.createElement('option');
        option2.value = generoTexto;
        option2.textContent = generoTexto;
        generoSelect.appendChild(option2);
    }
    generoSelect.value = generoTexto;

        editarBtn.style.display = 'none';
        guardarBtn.style.display = 'block';


    }



    // GUARDAR


    function guardarNombre() {
        var nombreInput = document.getElementById('nombreInput');
        var apellidoInput = document.getElementById('apellidoInput');
        var correoInput = document.getElementById('correoInput');
        var fechanacInput = document.getElementById('fechanacInput');
        var paisSelect = document.getElementById('paisSelect');
        var generoSelect = document.getElementById('generoSelect');
        var telefonoInput = document.getElementById('telefonoInput');
        var passwordInput = document.getElementById('passwordInput');
        var nuevoNombre = nombreInput.value;
        var nuevoApellido = apellidoInput.value;
        var nuevoCorreo = correoInput.value;
        var nuevoFecha = fechanacInput.value;
        var nuevoPais = paisSelect.value;
        var nuevoGenero = generoSelect.value;
        var nuevoTelefono = telefonoInput.value;
        var nuevoPassword = passwordInput.value;

    
        // Hacer una solicitud AJAX para guardar el nuevo nombre
        var xhr = new XMLHttpRequest();
        xhr.open('POST', 'act_datosper.php', true);
        xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
        xhr.onreadystatechange = function() {
            if (xhr.readyState == 4 && xhr.status == 200) {
                // La solicitud AJAX se ha completado correctamente
                // Puedes manejar la respuesta del servidor si es necesario
                console.log(xhr.responseText);
                
                // Actualizar el contenido mostrado en el span y volver a ocultar el input
                var nombreSpan = document.getElementById('nombreSpan');
                var apellidoSpan = document.getElementById('apellidoSpan');
                var correoSpan = document.getElementById('correoSpan');
                var fechanacSpan = document.getElementById('fechanacSpan');
                var paisSpan = document.getElementById('paisSpan');
                var generoSpan = document.getElementById('generoSpan');
                var telefonoSpan = document.getElementById('telefonoSpan');
                var editarBtn = document.getElementById('editar-btn');
                var guardarBtn = document.getElementById('guardar-btn');
                nombreSpan.textContent = nuevoNombre;
                nombreInput.style.display = 'none';
                nombreSpan.style.display = 'block';
                apellidoSpan.textContent = nuevoApellido;
                apellidoInput.style.display = 'none';
                apellidoSpan.style.display = 'block';
                correoSpan.textContent = nuevoCorreo;
                correoInput.style.display = 'none';
                correoSpan.style.display = 'block';
                fechanacSpan.textContent = nuevoFecha;
                fechanacInput.style.display = 'none';
                fechanacSpan.style.display = 'block';
                paisSpan.textContent = nuevoPais;
                paisSelect.style.display = 'none';
                paisSpan.style.display = 'block';
                generoSpan.textContent = nuevoGenero;
                generoSelect.style.display = 'none';
                generoSpan.style.display = 'block';
                telefonoSpan.textContent = nuevoTelefono;
                telefonoInput.style.display = 'none';
                telefonoSpan.style.display = 'block';
                passwordInput.style.display = 'none';
                passwordSpan.style.display = 'block';
                guardarBtn.style.display = 'none';
                editarBtn.style.display = 'block';
            }
        };
        xhr.send('nuevoNombre=' + nuevoNombre + '&nuevoApellido=' + nuevoApellido + '&nuevoCorreo=' + nuevoCorreo + '&nuevoFecha=' + nuevoFecha + '&nuevoPais=' + nuevoPais + '&nuevoGenero=' + nuevoGenero + '&nuevoTelefono=' + nuevoTelefono ); // Concatenar ambos parámetros en una sola cadena

    }


    
    

