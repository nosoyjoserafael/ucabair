function agregarRol(nombreRol){
    fetch('/roles', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ nombre: nombreRol })
    })
    .then(response => {
        if (!response.ok) {
            throw new Error('Error al guardar el rol');
        }
        return response.json();
    })
    .then(data => {
        alert(`Rol ${data.nombre} guardado exitosamente`);
        
    })
    .catch(error => {
        console.error('Error:', error);
        alert('Error al guardar el rol');
    });
}

document.getElementById('form-roles').addEventListener('submit', function(event) {
    event.preventDefault();
    
    const nombreRol = document.getElementById('nombre-rol').value;
    agregarRol(nombreRol);
});