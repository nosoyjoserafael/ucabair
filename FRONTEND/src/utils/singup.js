document.addEventListener('DOMContentLoaded', function() {
    const form = document.getElementById('form-singup');

    form.addEventListener('submit', function(event) {
        event.preventDefault();

        const username = document.getElementById('username').value;
        const password = document.getElementById('password').value;
        const name = document.getElementById('name').value;
        const dob = document.getElementById('dob').value;
        const cedula = Number(document.getElementById('cedula').value);
        const residencia = Number(document.getElementById('residencia').value); //numeros
        const direccion = document.getElementById('direccion').value; //string
        const tipoPersona = Number(document.querySelector('input[name="tipo_persona"]:checked').value);

        let estadoCivil = '';
        let apellido = '';
        let razonSocial = '';
        let data;

        if (tipoPersona === 1) { // Natural
            estadoCivil = document.getElementById('estado_civil').value;
            apellido = document.getElementById('apellido').value;
            data = {
                tipo: tipoPersona, 
                usuario: username, 
                contra: password, 
                nombre: name, 
                fecha_nac: dob, 
                cedula: cedula, 
                fk_lugar: residencia, 
                direccion: direccion, 
                estado_civir: estadoCivil, 
                apellido: apellido  
            };
        } else if (tipoPersona === 2) { // Juridica
            razonSocial = document.getElementById('razon_social').value;            
            data = {
                tipo: tipoPersona, 
                usuario: username, 
                contra: password, 
                nombre: name, 
                fecha_nac: dob, 
                cedula: cedula, 
                fk_lugar: residencia, 
                direccion: direccion, 
                razon_social: razonSocial        
            };
        }


        fetch('http://localhost:3000/adduser', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(data)
        })
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok ' + response.statusText);
            }
            return response.json();
        })
        .then(data => {
            alert(`${data.message}`);
            window.location.href = '/compra-avion';
        })
        .catch((error) => {
            console.error('Error:', error);
        });
    });        
});