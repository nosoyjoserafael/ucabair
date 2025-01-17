document.addEventListener('DOMContentLoaded', () => {
    const token = localStorage.getItem('token');
    if (!token) {
        alert('Debe iniciar sesión para acceder a esta página');
        window.location.href = '../pages/login.html';
        return;
    }   

    // Obtener los roles permitidos desde el atributo data-roles
    const rolesPermitidos = document.body.getAttribute('data-roles').split(',');
    console.log('Roles permitidos:', rolesPermitidos);

    // Verificar si el usuario tiene el rol necesario
    if(rolesPermitidos.includes("*")){
        return;
    }
    else if (!rolesPermitidos.includes(token)) {
        alert('No tiene permiso para acceder a esta página');
        window.location.href = '../pages/login.html';
    }
});