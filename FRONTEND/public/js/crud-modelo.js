document.addEventListener('DOMContentLoaded', async function() {
    const tableBody = document.querySelector('#tabla-aviones tbody');
    const overlay = document.getElementById('overlay');
    const overlayAdd = document.getElementById('overlay-add');
    const aviones = await obtenerAviones().then(aviones => aviones); // Obtener los aviones
    const caracteristicas = await verCaracteristicasModelo().then(caracteristicas => Object.keys(caracteristicas[1])); // Obtener las caracteristicas de los aviones

    displayAviones(aviones)
    configurarAddOverlay();

    async function obtenerAviones() {
        try {
            const response = await fetch('https://curly-couscous-9rv5rqjwpx62gxg-3000.app.github.dev/modelo'); //cambiar por la ruta correcta
            if (!response.ok) {
                throw new Error('Error al obtener los aviones');
            }
            return await response.json();    
        } catch (error) {
            console.error('Error:', error);
        }
    }

    function configurarAddOverlay() {
        const btnAdd = document.getElementById('btn-add');
        btnAdd.addEventListener('click', () => {
            overlayAdd.classList.remove('hidden');
            overlayAdd.classList.add('visible');
            const tableBody = document.querySelector('#tabla-add tbody');
            const modNombre = document.getElementById('mod-nombre');
            
            caracteristicas.forEach(caracteristica => {
                const fila = document.createElement('tr');
                fila.innerHTML = `
                    <td>${caracteristica}</td>
                    <td>
                        <input type="number" placeholder="Valor" min="1"/>
                    </td>`;
                tableBody.appendChild(fila);
            });

           const saveButton = document.getElementById('btn-save');
           saveButton.addEventListener('click', async () => {
            const datos = { Nombre: modNombre.value };
            const inputs = tableBody.querySelectorAll('input');
            inputs.forEach((input, index) => {
                datos[caracteristicas[index]] = input.value;
            });
                await agregarModelo(datos);
                alert('Modelo agregado exitosamente!');
            });
            

        });
    }

    function displayAviones(aviones) {
        tableBody.innerHTML = '';
        aviones.forEach(avion => {
            const fila = document.createElement('tr');
            fila.innerHTML = `
                <td>${avion.mod_cod}</td>
                <td>${avion.mod_nombre}</td>
                <td>
                    <button class="btn ver-caracteristicas-btn" onclikc="verCaracteristicasModelo(${avion.mod_cod}">Ver Características</button>
                    <button class="btn btn-eliminar" onclikc="eliminarModelo(${avion.mod_nombre}">Eliminar</button>
                </td>
            `;

            const btnEliminar = fila.querySelector('.btn-eliminar');
            btnEliminar.addEventListener('click', () => {
                eliminarModelo(avion.mod_nombre);            
            });

            const btnVerCaracteristicas = fila.querySelector('.ver-caracteristicas-btn');
            btnVerCaracteristicas.addEventListener('click', () => {                
                    overlay.classList.remove('hidden');
                    overlay.classList.add('visible');            
                    const tableBody = document.querySelector('#tabla-caracteristicas tbody');
                    tableBody.innerHTML = ''; // Clear existing rows
                    verCaracteristicasModelo().then(caracteristicas => {                        
                        if (caracteristicas.hasOwnProperty(avion.mod_cod)) {
                            const caracteristica = caracteristicas[avion.mod_cod];
                            const propiedades = Object.keys(caracteristica);
                            propiedades.forEach(propiedad => {
                                const fila = document.createElement('tr');
                                fila.innerHTML = `
                                    <td>${propiedad}</td>
                                    <td>${caracteristica[propiedad]}</td>
                                    <button class="btn" >Modificar</button>
                                `;
                                const btnModificar = fila.querySelector('.btn');
                                btnModificar.addEventListener('click', () => {
                                    const inputField = document.createElement('input');
                                    inputField.type = 'text';
                                    inputField.value = caracteristica[propiedad];
                                    
                                    const saveButton = document.createElement('button');
                                    saveButton.className = 'btn';
                                    saveButton.textContent = 'Guardar';
                                    
                                    fila.innerHTML = `
                                        <td>${propiedad}</td>
                                        <td></td>
                                    `;
                                    fila.children[1].appendChild(inputField);
                                    fila.children[1].appendChild(saveButton);
                                    
                                    saveButton.addEventListener('click', async () => {
                                        const newValue = inputField.value;
                                        await modificarCaracteristica(avion.mod_nombre, propiedad, newValue );
                                        alert('Característica modificada exitosamente!');
                                    });
                                });

                                tableBody.appendChild(fila);
                            });                            
                        }
                    });                
            });
            tableBody.appendChild(fila);
        });
    }

    async function verCaracteristicasModelo() {
        try {
            const response = await fetch('https://curly-couscous-9rv5rqjwpx62gxg-3000.app.github.dev/modelo/caracteristica'); //cambiar por la ruta correcta
            if (!response.ok) {
                throw new Error('Error al obtener las caracteristica del modelo');
            }
            const caracteristicas = await response.json();
            return caracteristicas;
        } catch (error) {
            console.error('Error:', error);
        }
    }

    async function eliminarModelo(mod_nombre) {
        try {
            const response = await fetch('https://curly-couscous-9rv5rqjwpx62gxg-3000.app.github.dev/modelo',
                {
                    method: 'DELETE',
                    headers: {
                        'Content-Type': 'application/json'
                        },
                    body: JSON.stringify({Nombre: mod_nombre})
                }
            );
            if (!response.ok) {
                throw new Error('Error al obtener las caracteristica del modelo');
            }
            alert(`Modelo ${mod_nombre} eliminado exitosamente!`);  
            window.location.reload();          
        } catch (error) {
            console.error('Error:', error);
        }
    }

    async function modificarCaracteristica(mod_nombre, caracteristicaNombre, valor) {
        try {
            const response = await fetch('https://curly-couscous-9rv5rqjwpx62gxg-3000.app.github.dev/modelo',
                {
                    method: 'PUT',
                    headers: {
                        'Content-Type': 'application/json'
                        },
                    body: JSON.stringify({ modelo: mod_nombre, nombre: caracteristicaNombre, valor: valor })
                }
            );
            if (!response.ok) {
                throw new Error('Error al obtener las caracteristica del modelo');
            }
            
        } catch (error) {
            console.error('Error:', error);
        }
    }

    async function agregarModelo(datos){
        try {
            const response = await fetch('https://curly-couscous-9rv5rqjwpx62gxg-3000.app.github.dev/modelo',
                {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify(datos)
                }
            );
            if (!response.ok) {
                throw new Error('Error al obtener las caracteristica del modelo');
            }            
        } catch (error) {
            console.error('Error:', error);
        }
    };

    overlay.addEventListener('click', function(event) {
        if (event.target === overlay) {
            overlay.classList.remove('visible');
            overlay.classList.add('hidden');
        }
    });

    overlayAdd.addEventListener('click', function(event) {
        if (event.target === overlayAdd) {
            overlayAdd.classList.remove('visible');
            overlayAdd.classList.add('hidden');
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