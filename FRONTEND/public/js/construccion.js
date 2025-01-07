document.addEventListener('DOMContentLoaded', async function() {
    const tableBody = document.querySelector('#tabla-aviones tbody');
    const overlay = document.getElementById('overlay');
    await fetchAviones();

    async function fetchAviones() {
        try {
            const response = await fetch('/aviones'); //cambiar por la ruta correcta
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
                <td>${avion.mod_cod}</td>
                <td>${avion.mod_nombre}</td>
                <td>
                    <button class="btn-comprar" onclick="comprarAvion(${avion.mod_cod})">Comprar</button>
                    <button class="ver-caracteristicas-btn" onclikc="verCaracteristicasModelo(${avion.mod_cod}">Ver Características</button>
                </td>
            `;
            const btnVerCaracteristicas = fila.querySelector('.ver-caracteristicas-btn');
            btnVerCaracteristicas.addEventListener('click', () => {                
                    overlay.classList.remove('hidden');
                    overlay.classList.add('visible');            
                    const tableBody = document.querySelector('#tabla-caracteristicas tbody');
                    tableBody.innerHTML = ''; // Clear existing rows
                    verCaracteristicasModelo().then(caracteristicas => {
                        caracteristicas.forEach(caracteristica => {
                            const row = document.createElement('tr');
                            row.innerHTML = `
                                <td>${caracteristica.id}</td>
                                <td>${caracteristica.nombre}</td>
                                <td>${caracteristica.opciones}</td>
                            `;
                            tableBody.appendChild(row);
                        });
                    });                
            });
            tableBody.appendChild(fila);
        });
    }

    async function verCaracteristicasModelo(mod_cod) {
        // Fetch data from your API or data source
        // Example:
        return [
            { id: 1, nombre: 'Modelo 1', opciones: 'Opción 1' },
            { id: 2, nombre: 'Modelo 2', opciones: 'Opción 2' }
        ];
    }

    overlay.addEventListener('click', function(event) {
        if (event.target === overlay) {
            overlay.classList.remove('visible');
            overlay.classList.add('hidden');
        }
    });

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
    
});