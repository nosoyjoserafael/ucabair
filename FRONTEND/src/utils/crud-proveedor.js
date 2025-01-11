document.addEventListener('DOMContentLoaded', function() {
    
    const entityName = 'proveedor'; // Reemplaza con el nombre de la entidad
    const entityEndpoint = 'https://curly-couscous-9rv5rqjwpx62gxg-3000.app.github.dev/rol'; // Reemplazar con la URL del endpoint de la entidad

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

    function addInputsToFormData() {        
        //Aqui se agregan los inputs del formulario al 
        // overLayForm segun sea necesario        

        //Ejemplo
        const inp1 = document.createElement('input');
        inp1.type = 'text';
        inp1.name = 'inp1';
        inp1.value = 'valor1';        

        //...Y asi sucesivamente

        //El insertBefore es para agregar siempre 
        // el input antes del boton de submit
        overlayForm.insertBefore(inp1, submitButton);        
    }


    function addEntity() { 
        overlay.classList.add('visible');
        overlayTitle.textContent = `Agregar ${entityName}`;
        overlayForm.innerHTML = ''; //Limpiar el formulario antes de agregar los inputs
        overlayForm.appendChild(submitButton)
        overlayFormAction.textContent = `Guardar`;
        addInputsToFormData();
        overlayForm.reset();

        /*fetch(entityEndpoint, {
        method: 'POST',
        headers: {
        'Content-Type': 'application/json',
        },
        body: JSON.stringify({
        name: entityName,
        })
        })
        .then(response => response.json())
        .then(data => {
            console.log(data);
            displayEntities();
            })
        .catch((error) => {
            console.error('Error:', error);
        }
        );*/
    }

    function modifyEntity(entityId) {
        overlay.classList.add('visible');
        overlayTitle.textContent = `Editar ${entityName}`;
        overlayForm.innerHTML = ''; //Limpiar el formulario antes de agregar los inputs
        overlayForm.appendChild(submitButton)
        overlayFormAction.textContent = `Guardar`;
        addInputsToFormData();
        overlayForm.reset();

        /*fetch(`${entityEndpoint}/${entityId}`, {
            method: 'PUT'
        })
            .then(response => response.json())
            .then(data => {
                overlayForm.id.value = data.id;
                overlayForm.name.value = data.name;
            });
        */
    }

    function deleteEntity(entityId) {
        overlay.classList.add('visible');
        overlayTitle.textContent = `¿Está seguro de que desea\neliminar este ${entityName}?`;
        overlayForm.innerHTML = ''; //Limpiar el formulario antes de agregar los inputs
        overlayForm.appendChild(submitButton)
        overlayFormAction.textContent = `Si`;

        /*fetch(`${entityEndpoint}/${entityId}`, {
            method: 'DELETE'
        })
            .then(response => response.json())
            .then(data => {
                displayEntities();
            });
        */
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
            fetch(`${entityEndpoint}/inventario`)
                .then(response => response.json())
                .then(data => {
                    console.log(data);
                    /*materiales.forEach(material => {
                    const option = document.createElement('option');
                    option.value = material.id;
                    option.textContent = material.nombre;
                    materialesDropDown.appendChild(option);
                    });*/
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

});