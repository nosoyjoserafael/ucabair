document.addEventListener('DOMContentLoaded', async function() {
    const tableBody = document.querySelector('#tabla-aviones tbody');

    async function fetchAviones() {
        try {
            const response = await fetch('/aviones');
            if (!response.ok) {
                throw new Error('Error al obtener los aviones');
            }
            const aviones = await response.json();
            displayAviones(aviones);
        } catch (error) {
            console.error('Error:', error);
        }
    }

    function displayAviones(aviones) {
        tableBody.innerHTML = '';
        aviones.forEach(avion => {
            const fila = document.createElement('tr');
            fila.innerHTML = `
                <td>${avion.codigo}</td>
                <td>${avion.descripcion}</td>
                <td><button class="btn-comprar" onclick="comprarAvion(${avion.codigo})">Comprar</button></td>
            `;
            tableBody.appendChild(fila);
        });
    }

    window.comprarAvion = async function(avionId) {
        const token = localStorage.getItem('token'); // Obtener el token del localStorage
        if (!token) {
            alert('Usuario no autenticado');
            return;
        }

        try {
            const response = await fetch('/compra-avion', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ avionId, token })
            });

            if (!response.ok) {
                throw new Error('Error al comprar el avión');
            }

            const result = await response.json();
            alert(`Avión con ID ${avionId} comprado exitosamente!`);
        } catch (error) {
            console.error('Error:', error);
            alert('Error al comprar el avión');
        }

    };

    await fetchAviones();
});