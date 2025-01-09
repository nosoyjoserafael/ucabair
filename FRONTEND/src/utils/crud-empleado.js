document.addEventListener('DOMContentLoaded', function() {
    
    const entityName = 'empleados'; // Reemplaza con el nombre de la entidad
    const entityEndpoint = '/entidad'; // Reemplazar con la URL del endpoint de la entidad

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

    addEntityButton.addEventListener('click', () => addEntity());

    overlay.addEventListener('click', function(event) {
        if (event.target === overlay) {
            overlay.classList.remove('visible');
        }
    });

    function displayEntities() {
       // fetch(entityEndpoint)
         //   .then(response => response.json())
           // .then(data => {
                entityTableBody.innerHTML = '';
                const data = [
                    { id: 1, name: 'Entidad 1' },
                    { id: 2, name: 'Entidad 2' },
                    { id: 3, name: 'Entidad 3' }
                ]
                data.forEach(entity => {
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
               // });
            //});
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

});