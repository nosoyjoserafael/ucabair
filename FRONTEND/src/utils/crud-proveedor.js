document.addEventListener('DOMContentLoaded', async function() {
    const tableBody = document.querySelector('#tabla-aviones tbody');
    const overlay = document.getElementById('overlay');
    const overlayAdd = document.getElementById('overlay-add');
    const proveedores = await obtenerProveedores().then(proveedores => proveedores); // Obtener los proveedores

    //displayProveedores(proveedores)
    configurarAddOverlay();

    async function obtenerProveedores() {
        try {
            const response = await fetch('https://curly-couscous-9rv5rqjwpx62gxg-3000.app.github.dev/proveedor'); //cambiar por la ruta correcta
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
            tableBody.innerHTML = ''; // Clear existing rows
            const modNombre = document.getElementById('mod-nombre');
            
            const fila = document.createElement('tr'); //hay que modificar esto
            fila.innerHTML = `
                <td>
                    <input type="text" placeholder="Nombre" name="Nombre"/>
                </td>
                <td>
                    <select>
                        <option value="Aleacion_de_Aluminio">Aleacion de Aluminio</option>
                        <option value="Aleacion_de_Titanio">Aleacion de Titanio</option>
                        <option value="Acero_Inoxidable">Acero Inoxidable</option>
                        <option value="Compuesto_de_fibra_de_carbono">"Compuesto de fibra de carbono</option>
                        <option value="Plastico">Plastico</option>
                        <option value="Textil">Textil</option>
                        <option value="Cuero">Cuero</option>
                        <option value="Aleacion">Aleacion de Magnesio</option>
                        <option value="Cobre">Cobre</option>
                        <option value="Aluminio">Aluminio</option>
                        <option value="Titanio_Grado_5">Titanio Grado 5</option>
                    </select>
                </td>
                <td>
                    <input type="number" placeholder="Cantidad del material" min="1" name="cantidad"/>
                </td>`;
            tableBody.appendChild(fila);

           const saveButton = document.getElementById('btn-save');
           saveButton.addEventListener('click', async () => {
               const nombre = tableBody.querySelector('input[name="Nombre"]').value;
               const selectedOption = tableBody.querySelector('select').value;
               const cantidad = tableBody.querySelector('input[name="cantidad"]').value;
               const datos = {Nombre: nombre};
               datos[selectedOption] = cantidad;
               console.log(datos);
               await agregarProveedor(datos);
               alert('Proveedor agregado exitosamente!');
            });
        })
    };
                

    function displayProveedores(proveedores) {
        tableBody.innerHTML = '';
        proveedores.forEach(proveedor => {
            const fila = document.createElement('tr');
            fila.innerHTML = `
                <td>${proveedor.prove_cod}</td>
                <td>${proveedor.prove_nombre}</td>
                <td>${proveedor.prove_ci}</td>
                <td>
                    <button class="btn btn-modificar" onclikc="verPropiedadesProveedor(${proveedor.prove_cod}">Modificar</button>
                    <button class="btn btn-eliminar" onclikc="eliminarModelo(${proveedor.prove_nombre}">Eliminar</button>
                </td>
            `;

            const btnEliminar = fila.querySelector('.btn-eliminar');
            btnEliminar.addEventListener('click', () => {
                eliminarProveedor(proveedor.prove_nombre);            
            });

            const btnModificar = fila.querySelector('.btn-modificar');
            btnModificar.addEventListener('click', () => {                
                overlay.classList.remove('hidden');
                overlay.classList.add('visible');            
                const tableBody = document.querySelector('#tabla-modificar tbody');
                tableBody.innerHTML = ''; // Clear existing rows                                          
                const fila = document.createElement('tr');
                fila.innerHTML = `
                <td>
                    <input type="text" placeholder="Nombre" name="Nombre" value="${proveedor.prove_nombre}"/>
                </td>
                <td>
                    <select>
                        <option value="Aleacion de Aluminio">Aleacion de Aluminio</option>
                        <option value="Aleacion de Titanio">Aleacion de Titanio</option>
                        <option value="Acero Inoxidable">Acero Inoxidable</option>
                        <option value="Compuesto de fibra de carbono">"Compuesto de fibra de carbono</option>
                        <option value="Plastico">Plastico</option>
                        <option value="Textil">Textil</option>
                        <option value="Cuero">Cuero</option>
                        <option value="Aleacion">Aleacion de Magnesio</option>
                        <option value="Cobre">Cobre</option>
                        <option value="Aluminio">Aluminio</option>
                        <option value="Titanio Grado 5">Titanio Grado 5</option>
                    </select>
                </td>
                <td>
                    <input type="number" placeholder="Cantidad del material" min="1" name="cantidad"/>
                </td>
                <td>
                    <input type="number" placeholder="Costo del material" min="1" name="costo"/>
                </td>
                <button class="btn">Guardar</button>
                `;
                const btnGuardar = fila.querySelector('.btn');
                btnGuardar.addEventListener('click', async () => {
                    const nombre = tableBody.querySelector('input[name="Nombre"]').value;
                    const selectedOption = tableBody.querySelector('select').value;
                    const cantidad = tableBody.querySelector('input[name="cantidad"]').value;
                    const costo = tableBody.querySelector('input[name="costo"]').value;
                    const datos = {proveedor: nombre, material: selectedOption, cantidad: cantidad, costo: costo};
                    await modificarProveedor(datos);                          
                });
                tableBody.appendChild(fila);
            });
        tableBody.appendChild(fila);    
        });
    }

    async function eliminarProveedor(nombre) {
        try {
            const response = await fetch('https://curly-couscous-9rv5rqjwpx62gxg-3000.app.github.dev/proveedor',
                {
                    method: 'DELETE',
                    headers: {
                        'Content-Type': 'application/json'
                        },
                    body: JSON.stringify({Nombre: nombre})
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

    async function modificarProveedor(datos) {
        try {
            const response = await fetch('https://curly-couscous-9rv5rqjwpx62gxg-3000.app.github.dev/proveedor',
                {
                    method: 'PUT',
                    headers: {
                        'Content-Type': 'application/json'
                        },
                    body: JSON.stringify(datos)
                }
            );
            if (!response.ok) {
                throw new Error('Error al obtener el proveedor');
            }
            alert(`Proveedor ${datos.proveedor} modificado exitosamente!`);
        } catch (error) {
            console.error('Error:', error);
        }
    }

    async function agregarProveedor(datos){
        try {
            const response = await fetch('https://curly-couscous-9rv5rqjwpx62gxg-3000.app.github.dev/proveedor',
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