document.addEventListener('DOMContentLoaded', function() {
    
    const entityName = 'tipo de prueba'; // Reemplaza con el nombre de la entidad
    const entityEndpoint = 'https://curly-couscous-9rv5rqjwpx62gxg-3000.app.github.dev/tipoprueba'; // Reemplazar con la URL del endpoint de la entidad

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
       fetch(entityEndpoint)
         .then(response => response.json())
         .then(data => {
                entityTableBody.innerHTML = '';  
                const dataValues = Object.values(data);        
                dataValues.forEach(entity => {
                    const row = document.createElement('tr');
                    let descripcion = entity.tprueba_descripcion;
                    if (descripcion == null) {
                        descripcion = 'No disponible';
                    }
                    
                    //Se reemplazan las columnas por los atributos de la entidad
                    row.innerHTML = `
                    <td>${entity.tprueba_cod}</td>
                    <td>${entity.tprueba_nombre}</td>                
                    <td>${descripcion}</td>  
                    <td>${entity.tprueba_duracion_estim}</td>  
                    <td>
                        <button class="edit-btn">Editar</button>
                        <button class="delete-btn">Eliminar</button>
                    </td>
                    `;
                    const editButton = row.querySelector('.edit-btn');
                    const deleteButton = row.querySelector('.delete-btn');
                    editButton.addEventListener('click', () => modifyEntity(entity));
                    deleteButton.addEventListener('click', () => deleteEntity(entity.tprueba_cod));
                    entityTableBody.appendChild(row);
               });
               $('#entity-table').DataTable();
            })
            .catch(error => console.error(error));
    }

    function addEntity() { 
        overlay.classList.add('visible');
        overlayTitle.textContent = `Agregar tipo de ${entityName}`;
        overlayForm.innerHTML = ''; //Limpiar el formulario antes de agregar los inputs
        overlayForm.appendChild(submitButton)        
        overlayFormAction.textContent = `Guardar`;     
        
        const inp1 = document.createElement('input');
        inp1.type = 'text';
        inp1.placeholder = 'Nombre del tipo';
        inp1.required = true;
        inp1.name = 'Nombre';
        const inp2 = document.createElement('input');
        inp2.type = 'text';        
        inp2.placeholder = 'Descripción del tipo';
        inp2.required = true;
        inp2.name = 'Descripción';
        const inp3 = document.createElement('input');
        inp3.type = 'number';
        inp3.placeholder = 'Tiempo estimado (dias)';
        inp3.required = true;
        inp3.name = 'Tiempo estimado';

        overlayForm.insertBefore(inp1, submitButton);
        overlayForm.insertBefore(inp2, submitButton);
        overlayForm.insertBefore(inp3, submitButton);

        overlayForm.reset();

        overlayForm.addEventListener('submit', function(event) {
            event.preventDefault();

            fetch(entityEndpoint, {
                method: 'POST',
                headers: {
                'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    nombre: inp1.value,
                    descripcion: inp2.value,
                    timestim: inp3.value
                })
            })
            .then(response => response.json())
            .then(data => {
                    alert(data);
                    displayEntities();
                    window.location.reload();
                })
            .catch((error) => {
                console.error('Error:', error);
            });
        })
    }

    function modifyEntity(entity) {
        overlay.classList.add('visible');
        overlayTitle.textContent = `Editar ${entityName}`;
        overlayForm.innerHTML = ''; //Limpiar el formulario antes de agregar los inputs
        overlayForm.appendChild(submitButton)
        overlayFormAction.textContent = `Guardar`;
        
        const inp1 = document.createElement('input');
        inp1.type = 'text';        
        inp1.value = entity.tprueba_nombre;
        inp1.placeholder = entity.tprueba_nombre;
        inp1.required = true;
        inp1.name = 'Nombre';
        const inp2 = document.createElement('input');
        inp2.type = 'text';     
        inp2.value = entity.tprueba_descripcion;
        inp2.placeholder = entity.tprueba_descripcion;
        inp2.required = true;
        inp2.placeholder = entity.tprueba_descripcion !== null ? entity.tprueba_descripcion : 'No disponible';
        inp2.name = 'Descripción';
        const inp3 = document.createElement('input');
        inp3.type = 'number';        
        inp3.value = entity.tprueba_duracion_estim;
        inp3.placeholder = entity.tprueba_duracion_estim;
        inp3.required = true;
        inp3.name = 'Tiempo estimado';

        overlayForm.insertBefore(inp1, submitButton);
        overlayForm.insertBefore(inp2, submitButton);
        overlayForm.insertBefore(inp3, submitButton);

        overlayForm.addEventListener('submit', function(event) {
            event.preventDefault();
            fetch(`${entityEndpoint}`, {
                method: 'PUT',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    TPcod: entity.tprueba_cod,
                    nombre: inp1.value,
                    descripcion: inp2.value,
                    timestim: inp3.value
                })
            })
            .then(response => response.json())
            .then(data => {
                alert(data.message);
                displayEntities();
                window.location.reload();
            })
            .catch(error => {
                console.error('Error:', error);
            });
        });
    }

    function deleteEntity(entityId) {
        overlay.classList.add('visible');
        overlayTitle.textContent = `¿Está seguro de que desea\neliminar este ${entityName}?`;
        overlayForm.innerHTML = ''; //Limpiar el formulario antes de agregar los inputs
        overlayForm.appendChild(submitButton)
        overlayFormAction.textContent = `Si`;

        overlayForm.addEventListener('submit', function(event) {
            event.preventDefault();

            fetch(`${entityEndpoint}`, {
                method: 'DELETE',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    TPcod: entityId
                })
            })
            .then(response => response.json())
            .then(data => {
                alert(data.message);
                displayEntities();
                window.location.reload();
            })
            .catch(error => {
                console.error('Error:', error);
            });
        });
    }    

});