document.addEventListener('DOMContentLoaded', function() {
    
    const entityName = 'proveedor'; // Reemplaza con el nombre de la entidad
    const entityEndpoint = 'https://curly-couscous-9rv5rqjwpx62gxg-3000.app.github.dev/proveedor'; // Reemplazar con la URL del endpoint de la entidad

    document.getElementById('entity-name').textContent = entityName;
    document.getElementById('entity-name-list').textContent = entityName;
    document.getElementById('entity-name-overlay').textContent = entityName;

    const entityTableBody = document.querySelector('#entity-table tbody');
    const overlay = document.getElementById('generic-overlay');
    const overlayForm = document.getElementById('overlay-form');
    const submitButton = overlayForm.querySelector('button[type="submit"]');
    const overlayTitle = document.getElementById('overlay-title');
    const addEntityButton = document.getElementById('add-entity-btn');
    const overlayFormAction = document.getElementById('overlay-form-action');

    const proveedores = []

    displayEntities();

    addEntityButton.addEventListener('click', () => addEntity());
    document.getElementById('compra-btn').addEventListener('click', () => solicitarMateriales());
    //document.getElementById('historial-btn').addEventListener('click', () => verHistorial());

    overlay.addEventListener('click', function(event) {
        if (event.target === overlay) {
            overlay.classList.remove('visible');
        }
    });

    function displayEntities() {
       fetch(entityEndpoint)
        .then(response => response.json())
        .then(data => {
            entityTableBody.innerHTML = '';
            const dataValues = Object.values(data);
            dataValues.forEach(entity => {
                const row = document.createElement('tr');
                
                //Se reemplazan las columnas por los atributos de la entidad
                row.innerHTML = `
                <td>${entity.prove_cod}</td>
                <td>${entity.prove_nombre}</td>                
                <td>
                    <button class="edit-btn">Editar</button>
                    <button class="delete-btn">Eliminar</button>
                </td>
                `;

                const proveedor = {
                    prove_cod: entity.prove_cod,
                    prove_nombre: entity.prove_nombre
                }

                proveedores.push(proveedor);

                const editButton = row.querySelector('.edit-btn');
                const deleteButton = row.querySelector('.delete-btn');
                editButton.addEventListener('click', () => modifyEntity(entity.prove_cod));
                deleteButton.addEventListener('click', () => deleteEntity(entity.prove_cod));
                entityTableBody.appendChild(row);
            });            
        });
    }

    function addEntity() { 
        overlay.classList.add('visible');
        overlayTitle.textContent = `Agregar ${entityName}`;
        overlayForm.innerHTML = ''; //Limpiar el formulario antes de agregar los inputs
        overlayForm.appendChild(submitButton)
        overlayFormAction.textContent = `Guardar`;
        
        const inp1 = document.createElement('input');
        inp1.type = 'text';
        inp1.placeholder = 'Nombre';
        inp1.name = 'Nombre';
        inp1.required = true;

        overlayForm.insertBefore(inp1, submitButton);

        fetch('https://curly-couscous-9rv5rqjwpx62gxg-3000.app.github.dev/tipo_material')
            .then(response => response.json())
            .then(materiales => {
                materiales.forEach(material => {
                    const checkboxContainer = document.createElement('div');
                    checkboxContainer.classList.add('checkbox-container');

                    const checkbox = document.createElement('input');
                    checkbox.type = 'checkbox';
                    checkbox.name = 'materiales';
                    checkbox.value = material.tipo_mat_cod;
                    checkbox.id = `material-${material.tipo_mat_cod}`;

                    const label = document.createElement('label');
                    label.htmlFor = `material-${material.tipo_mat_cod}`;
                    label.textContent = material.tipo_mat_nombre;

                    const cantidadInput = document.createElement('input');
                    cantidadInput.type = 'number';
                    cantidadInput.name = `cantidad-${material.tipo_mat_cod}`;
                    cantidadInput.id = `cantidad-${material.tipo_mat_cod}`;
                    cantidadInput.min = 200;
                    cantidadInput.disabled = true;

                    checkbox.addEventListener('change', function() {
                        cantidadInput.disabled = !this.checked;
                    });

                    checkboxContainer.appendChild(checkbox);
                    checkboxContainer.appendChild(label);
                    checkboxContainer.appendChild(cantidadInput);
                    overlayForm.insertBefore(checkboxContainer, submitButton);
                });
                overlayForm.reset();
            })
            .catch(error => console.error('Error:', error));

        overlayForm.addEventListener('submit', function(event) {
            event.preventDefault();
            const formData = new FormData(this);
            const materiales = Array.from(formData.getAll('materiales')).map(material => material);
            const cantidades = Array.from(formData.getAll('cantidad-')).map(cantidad => cantidad);            

            fetch(entityEndpoint, {
                method: 'POST',
                headers: {
                'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    prove_nombre: formData.get('Nombre'),
                    materiales: materiales,
                    cantidades: cantidades
                })
            })
            .then(response => response.json())
            .then(data => {
                console.log(data);
                displayEntities();
                window.location.reload();
            })
            .catch((error) => {
                console.error('Error:', error);
            });
        })
    }

    function modifyEntity(entityId) {
        overlay.classList.add('visible');
        overlayTitle.textContent = `Editar ${entityName}`;
        overlayForm.innerHTML = ''; //Limpiar el formulario antes de agregar los inputs
        overlayForm.appendChild(submitButton)
        overlayFormAction.textContent = `Guardar`;
        
        const inp1 = document.createElement('select');
        inp1.name = 'Materiales';
        inp1.required = true;
        inp1.innerHTML = `<option value="">Seleccione un material</option>`;        
        fetch(`${entityEndpoint}/inventario`,
            {
                method: 'GET',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({prove_cod: selectedProveedorId})
            })
            .then(response => response.json())
            .then(data => {       
                //no funciona aun
                data.forEach(material => {
                const option = document.createElement('option');
                option.value = material.tmat_cod;
                option.textContent = material.nombre;
                inp1.appendChild(option);
                });
            })
            .catch(error => {
            console.error('Error:', error);
            });

        const inp2 = document.createElement('input');
        inp2.type = 'number';
        inp2.placeholder = 'Cantidad';
        inp2.name = 'Cantidad';
        inp2.required = true;
        inp2.min = 1;
        const inp3 = document.createElement('input');
        inp3.type = 'number';
        inp3.placeholder = 'Precio';
        inp3.name = 'Precio';
        inp3.required = true;
        inp3.min = 1;

        overlayForm.insertBefore(inp1, submitButton);
        overlayForm.insertBefore(inp2, submitButton);
        overlayForm.insertBefore(inp3, submitButton);

        overlayForm.reset();

        overlayForm.addEventListener('submit', function(event) {
            event.preventDefault();

            fetch(`${entityEndpoint}`, {
                method: 'PUT',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    prove_cod: entityId,
                    tmat_cod: inp1.value,
                    cantidad: inp3.value,
                    precio: inp3.value

                })
            })
            .then(response => response.json())
            .then(data => {
                overlayForm.id.value = data.id;
                overlayForm.name.value = data.name;
            });
            
        });
    }

    function deleteEntity(entityId) {
        overlay.classList.add('visible');
        overlayTitle.textContent = `¿Está seguro de que desea\neliminar este ${entityName}?`;
        overlayForm.innerHTML = ''; //Limpiar el formulario antes de agregar los inputs
        overlayForm.appendChild(submitButton)
        overlayFormAction.textContent = `Si`;

        overlayFormAction.addEventListener('click', function(event) {
            event.preventDefault();
            
            fetch(`${entityEndpoint}`, {
                method: 'DELETE',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({prove_cod: entityId})
            })
            .then(response => response.json())
            .then(data => {
                alert('Proveedor eliminado exitosamente');
                window.location.reload();
            })
            .catch(error => console.error('Error:', error));            
        });
    }

    function solicitarMateriales(){
        overlay.classList.add('visible');
        overlayTitle.textContent = `Solicitar materiales a ${entityName}`;
        overlayForm.innerHTML = '';
        overlayForm.appendChild(submitButton)

        const proveedoresDropDown = document.createElement('select');
        proveedoresDropDown.name = 'proveedorDropDown';
        proveedoresDropDown.id = 'proveedorDropDown';
        proveedoresDropDown.required = true;
        proveedoresDropDown.innerHTML = `<option value="">Seleccione un proveedor</option>`;
        proveedores.forEach(proveedor => {
            const option = document.createElement('option');
            option.value = proveedor.prove_cod;
            option.textContent = proveedor.prove_nombre;
            proveedoresDropDown.appendChild(option);
        });        
        
        const materialesDropDown = document.createElement('select');
        materialesDropDown.name = 'materialesDropDown';
        materialesDropDown.id = 'materialesDropDown';
        materialesDropDown.required = true;
        materialesDropDown.innerHTML = `<option value="">Seleccione un material</option>`; // Reset materials dropdown

        proveedoresDropDown.addEventListener('change', function() {
            const selectedProveedorId = this.value;

            if (selectedProveedorId) {
            fetch(`${entityEndpoint}/inventario`,
                {
                    method: 'GET',
                    headers: {
                        'Content-Type': 'application/json',
                    },
                    body: JSON.stringify({prove_cod: selectedProveedorId})
                })
                .then(response => response.json())
                .then(data => {       
                    //no funciona aun
                    data.forEach(material => {
                    const option = document.createElement('option');
                    option.value = material.tmat_cod;
                    option.textContent = material.nombre;
                    materialesDropDown.appendChild(option);
                    });
                })
                .catch(error => {
                console.error('Error:', error);
                });
            }
        });

        const cantidadInput = document.createElement('input');
        cantidadInput.type = 'number';
        cantidadInput.name = 'cantidadInput';
        cantidadInput.id = 'cantidadInput';
        cantidadInput.min = 1;
        cantidadInput.required = true;
        cantidadInput.placeholder = 'Cantidad a solicitar';

        overlayForm.insertBefore(proveedoresDropDown, submitButton);
        overlayForm.insertBefore(materialesDropDown, submitButton);
        overlayForm.insertBefore(cantidadInput, submitButton);

    }

    function verHistorial(){

    }

});