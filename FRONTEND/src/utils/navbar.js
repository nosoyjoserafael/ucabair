document.addEventListener('DOMContentLoaded', () => {
    //const token = localStorage.getItem('token');
    const token = 'admin'; //solo para pruebas

    localStorage.setItem('token', token); //solo para pruebas
    localStorage.setItem('id', 93); //solo para pruebas

    const storedToken = localStorage.getItem('token'); //solo para pruebas

    const overlay = document.getElementById('generic-overlay');
    const overlayMatrix = document.querySelector('.overlay-matrix');
    const profile = document.getElementById('perfil');
    const singoutBtn = document.getElementById("singout");

    profile.addEventListener('click', () => {
        window.top.location.href = '../pages/perfil-usuario.html';
    });

    overlay.addEventListener('click', function(event) {
        if (event.target === overlay) {
            overlay.classList.remove('visible');
            adjustIframeSize(false);
        }
    });

    singoutBtn.addEventListener('click', () => {
        singout();
    });

    function addURLsEmployee() {        
        //Aqui se agregan los urls al 
        // overLay segun sea necesario        
        overlayMatrix.innerHTML = '';
        const cruds = {
            Proveedores: '../pages/crud-proveedor.html', 
            Empleados: '../pages/crud-personal.html', 
            Modelo: '../pages/crud-modelo.html',
            Materiales: '../pages/crud-material.html',
            Roles: '../pages/crud-rol.html',
            Pruebas: '../pages/crud-tipo-prueba.html',
            Asistencia: '../pages/crud-asistencia.html',
            Equipos: '../pages/crud-equipo.html',
            Reportes: '../pages/reportes.html'                        
        };
        
        const urlsKeys = Object.keys(cruds);
        const urls = Object.values(cruds);

        // Recorrer los dos arreglos simultáneamente
        for (let i = 0; i < urlsKeys.length; i++) {
            const key = urlsKeys[i];
            const url = urls[i];
            const spanUrl = document.createElement('span');
            const urlElement = document.createElement('a');    
            urlElement.textContent = key;
            urlElement.href = url;        
            spanUrl.appendChild(urlElement); 
            spanUrl.addEventListener('click', () => {window.location.href = url;});       
            overlayMatrix.appendChild(spanUrl);
        }
    }

    function adjustIframeSize(expand) {
        const iframe = window.frameElement;
        if (iframe) {
            if (expand) {
                iframe.style.position = 'fixed';
                iframe.style.top = '0';
                iframe.style.left = '0';
                iframe.style.width = '100%';
                iframe.style.height = '100%';
                iframe.style.zIndex = '1000';
            } else {
                iframe.style.position = '';
                iframe.style.top = '';
                iframe.style.left = '';
                iframe.style.width = '100%';
                iframe.style.height = 'auto';
                iframe.style.zIndex = '';
            }
        }
    }

    function singout(){
        localStorage.clear();
        alert('Sesión cerrada');
        window.top.location.href = '../pages/login.html';
    }

    // Decodificar el token para obtener la información del usuario (aun no está integrado)
    //const payload = JSON.parse(atob(storedToken.split('.')[1]));

    // Verificar si el usuario tiene el rol necesario
    if(storedToken.includes("empleado") || storedToken.includes("admin")) {
        document.getElementById('gestion-a').addEventListener('click', () => {
            overlay.classList.add('visible');
            adjustIframeSize(true);
            addURLsEmployee();
        });        
    }
    else{
        document.getElementById('gestion-a').remove();
    }
});