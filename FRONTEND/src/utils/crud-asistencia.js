document.addEventListener('DOMContentLoaded', function() {
    
    const entityName = 'asistencia'; // Reemplaza con el nombre de la entidad
    const entityEndpoint = 'https://curly-couscous-9rv5rqjwpx62gxg-3000.app.github.dev/asistencia'; // Reemplazar con la URL del endpoint de la entidad

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
    
    displayEntities();

    if (!localStorage.getItem('token').includes('admin')) {
        const actionsHeader = document.querySelector('#entity-table th:last-child');
        if (actionsHeader) {
            actionsHeader.remove();
        }
    }

    addEntityButton.addEventListener('click', () => addEntity());

    overlay.addEventListener('click', function(event) {
        if (event.target === overlay) {
            overlay.classList.remove('visible');
        }
    });

    function displayEntities() {
        if (!localStorage.getItem('token').includes('admin')) {
            fetch(entityEndpoint)
            .then(response => response.json())
            .then(data => {
                entityTableBody.innerHTML = '';
                const dataValues = Object.values(data);
                dataValues.forEach(entity => {
                    const row = document.createElement('tr');
                    
                    //Se reemplazan las columnas por los atributos de la entidad
                    row.innerHTML = `
                    <td>${entity.id}</td>
                    <td>${entity.name}</td>                
                    <td>
                        <button class="edit-btn">Editar</button>
                        <button class="delete-btn">Eliminar</button>
                    </td>
                    `;
                    const editButton = row.querySelector('.edit-btn');
                    const deleteButton = row.querySelector('.delete-btn');
                    editButton.addEventListener('click', () => modifyEntity(entity.id));
                    deleteButton.addEventListener('click', () => deleteEntity(entity.id));
    
                    entityTableBody.appendChild(row);
                });
            });
        }
        else if(localStorage.getItem('token').includes('empleado')){
            fetch(`${entityEndpoint}/${localStorage.getItem('id')}`)
            .then(response => response.json())
            .then(data => {
                entityTableBody.innerHTML = '';
                const dataValues = Object.values(data);                
                dataValues.forEach(entity => {
                    const row = document.createElement('tr');
                    
                    //Se reemplazan las columnas por los atributos de la entidad
                    row.innerHTML = `
                    <td>${entity.id}</td>
                    <td>${entity.name}</td>                                    
                    `;  
                    
    
                    entityTableBody.appendChild(row);
                });
            });
        }
        
    }

    function addEntity() { 
        overlay.classList.add('visible');
        overlayTitle.textContent = `Agregar ${entityName}`;
        overlayForm.innerHTML = ''; //Limpiar el formulario antes de agregar los inputs
        overlayForm.appendChild(submitButton)
        overlayFormAction.textContent = `Guardar`;

        if(localStorage.getItem('token').includes('admin')){
            const selectEmleado = document.createElement('select');
            selectEmleado.name = 'empleados';
            selectEmleado.id = 'empleados';
            selectEmleado.innerHTML = `<option value="">Seleccione un empleado</option>`;
            fetch(entityEndpoint)
            .then(response => response.json())
            .then(data => {
                const dataValues = Object.values(data);
                dataValues.forEach(entity => {
                    const option = document.createElement('option');
                    option.value = entity.id;
                    option.textContent = entity.name;
                    selectEmleado.appendChild(option);
                }); 
            }); 
            overlayForm.insertBefore(selectEmleado, submitButton);
        }
        //falta poner el la parte del usuario del empleado
        let usuario = 'usuario1';
            

        const inp1 = document.createElement('input');
        inp1.type = 'date';
        inp1.name = 'fecha';
        inp1.id = 'fecha';
        inp1.placeholder = 'Fecha';
        overlayForm.insertBefore(inp1, submitButton);
        
        overlayForm.reset();

        overlayForm.addEventListener('submit', function(event) {
        });

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

});