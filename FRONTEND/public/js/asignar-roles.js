document.addEventListener('DOMContentLoaded',async () => {
    const usuarios = await obtenerUsuarios();
    cargarUsuariosEnTabla(usuarios);
});

async function cargarUsuariosEnTabla(usuarios) {
    const tabla = document.querySelector('#tabla-usuarios tbody');
    tabla.innerHTML = '';
    const roles = await obtenerRoles();
    usuarios.forEach(usuario => {
        const fila = document.createElement('tr');
        fila.innerHTML = `
            <td>${usuario.id}</td>
            <td>${usuario.username}</td>
            <td>${usuario.email}</td>
            <td>${usuario.role}</td>
            <td>                
                <select class="role-dropdown">
                    ${roles.map(rol => `<option value="${rol.nombre}">${rol.nombre}</option>`).join('')}
                </select>
                <button class="btn-actualizar-rol" onclick="actualizarRol(${usuario.id})">Actualizar</button>
            </td>
        `;
        tabla.appendChild(fila);
    });
}

async function obtenerRoles(){
    try {
        const response = await fetch('/roles');
        const data = await response.json();
        return data;
    } catch (error) {
        return console.error('Error:', error);
    }
}

async function obtenerUsuarios() {
    try {
        const response = await fetch('/register');
        const data = await response.json();
        return data;
    } catch (error) {
        return console.error('Error:', error);
    }
}

async function buscarID() {
    const usuarios = await obtenerUsuarios();
    const searchTerm = document.getElementById('buscar-ID').value;
    const filteredUsuarios = usuarios.filter(usuario => usuario.id.toString().includes(searchTerm));
    cargarUsuariosEnTabla(filteredUsuarios);
};

async function actualizarRol(id) {
    const nuevoRol = document.querySelector(`tr:nth-child(${id}) .role-dropdown`).value;
    console.log(nuevoRol);
    const response = await fetch(`/update-rol/${id}`, {
        method: 'PUT',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ id, rol: nuevoRol })
    });
    if (response.ok) {
        const usuarios = await obtenerUsuarios();
        cargarUsuariosEnTabla(usuarios);
        alert('Rol actualizado correctamente');
    } else {
        console.error('Error:', response.statusText);
    }
}