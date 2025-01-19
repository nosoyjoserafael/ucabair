document.addEventListener('DOMContentLoaded', () => {

    const entityEndpoint = 'https://curly-couscous-9rv5rqjwpx62gxg-3000.app.github.dev/perfil';

    const storedTokenRole = localStorage.getItem('token');
    const storedTokenId = localStorage.getItem('id');

    const userDataSection = document.getElementById('user-profile');

    const userName = document.getElementById('user-name');
    const userCI = document.getElementById('user-ci');
    const userStartDate = document.getElementById('user-start-date');
    let userResidence;
    let userAddress;
    if(storedTokenRole !== 'proveedor'){
        userResidence = document.getElementById('user-residence');
        userAddress = document.getElementById('user-address');
    }
    const additionalsNames = ["Correo Electrónico","Teléfono"];
    const additionals = ["email","phone"];
    for (let i = 0; i < additionals.length; i++) {
        const container = document.createElement('div');
        container.classList.add('user-info');
        const label = document.createElement('label');
        label.textContent = `${additionalsNames[i]}:`;
        label.htmlFor = `user-${additionals[i]}`;
        const userAdditional = document.createElement(`span`);
        userAdditional.id = `user-${additionals[i]}`;
        container.appendChild(label);
        container.appendChild(userAdditional);
        userDataSection.appendChild(container);
    }   

    const estados = [
        "Amazonas",
        "Anzoátegui",
        "Apure",
        "Aragua",
        "Barinas",
        "Bolívar",
        "Carabobo",
        "Cojedes",
        "Delta Amacuro",
        "Falcón",
        "Guárico",
        "Lara",
        "Mérida",
        "Miranda",
        "Monagas",
        "Nueva Esparta",
        "Portuguesa",
        "Sucre",
        "Táchira",
        "Trujillo",
        "Vargas",
        "Yaracuy",
        "Zulia",
        "Distrito Capital",
        "Dependencias Federales"
    ]

    getUsuario();
    
    function getUsuario(){
        fetch(`${entityEndpoint}/${storedTokenRole}/${storedTokenId}`)
        .then(response => response.json())
        .then(data => {
            console.log(data);
            userName.textContent = `${data[0].nombre}`;
            userCI.textContent = data[0].cedula;
            userStartDate.textContent = data[0].cons_fecha_ini;
            if(localStorage.getItem('token') !== 'proveedor'){
                userResidence.textContent = estados[data[0].lugar_de_residencia-1] !== null ? estados[data[0].lugar_de_residencia-1] : 'No especificado';
                userAddress.textContent = data[0].direccion !== null ? data[0].direccion : 'No especificado';
            }
            const userAdditional1 = document.getElementById('user-email');
            if(data.cor_alias === null && data.cor_dominio === null)
                userAdditional1.textContent = 'No especificado';
            else
                userAdditional1.textContent = data.cor_alias+'@'+data.cor_dominio;
            const userAdditional2 = document.getElementById('user-phone');
            if(data.tlf_cod_area === null && data.tlf_numero === null)
                userAdditional2.textContent = 'No especificado';
            else
                userAdditional2.textContent = '+'+data.cor_alias+' '+data.cor_dominio;
        })
        .catch(error => console.error(error));        
    }


});