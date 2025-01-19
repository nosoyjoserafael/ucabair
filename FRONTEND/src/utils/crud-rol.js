document.addEventListener('DOMContentLoaded', function() {
    
    const entityName = 'roles'; // Reemplaza con el nombre de la entidad
    const entityEndpoint = 'http://localhost:3000/rol'; // Reemplazar con la URL del endpoint de la entidad

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

    const rolesExistentes = []

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
            const entityValues = Object.values(data);                 
            entityValues.forEach(entity => {
                if (!rolesExistentes.includes(entity.rol_nombre)) {
                    rolesExistentes.push(entity.rol_nombre)
                }
                const row = document.createElement('tr');
                
                //Se reemplazan las columnas por los atributos de la entidad
                row.innerHTML = `
                    <td>${entity.user_nombre}</td>
                    <td>${entity.rol_nombre}</td>                
                    <td>
                        <button class="edit-btn">Editar</button>
                    </td>
                    `;
                    const editButton = row.querySelector('.edit-btn');
                    editButton.addEventListener('click', () => modifyEntity(entity.user_nombre));
                    entityTableBody.appendChild(row);
            });
            $('#entity-table').DataTable();
        })
        .catch(error => console.error(error));
    }        

    function addEntity() { 
        overlay.classList.add('visible');
        overlayTitle.textContent = `Agregar ${entityName}`;
        overlayForm.innerHTML = ''; //Limpiar el formulario antes de agregar los inputs
        overlayForm.appendChild(submitButton)
        overlayFormAction.textContent = `Guardar`;
        
        const inp1 = document.createElement('input');
        inp1.type = 'text';
        inp1.name = 'nombre';
        inp1.id = 'nombre';
        inp1.placeholder = 'Nombre del rol';
        
        overlayForm.insertBefore(inp1, submitButton);


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

    function modifyEntity(username) {
        overlay.classList.add('visible');
        overlayTitle.textContent = `Editar ${entityName}`;
        overlayForm.innerHTML = ''; //Limpiar el formulario antes de agregar los inputs
        overlayForm.appendChild(submitButton)
        overlayFormAction.textContent = `Guardar`;

        const rolesDropdown = document.createElement('select');
        rolesDropdown.name = 'roles';
        rolesDropdown.id = 'roles';
        rolesDropdown.innerHTML = `<option value="">Seleccione un rol</option>`;
        rolesExistentes.forEach(rol => {
            const option = document.createElement('option');
            option.value = rol.id;
            option.textContent = rol;
            rolesDropdown.appendChild(option);
        })

        overlayForm.insertBefore(rolesDropdown, submitButton);
        
        overlayForm.reset();

        overlayForm.addEventListener('submit', function(event) {
            event.preventDefault();

            fetch(`http://localhost:3000/usuario`, {
                method: 'PUT',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    user: username,
                    rolcod: rolesDropdown.value
                })
            })
            .then(response => response.json())
            .then(data => {
                alert(data.message);
                displayEntities();
                window.location.reload();
            });  
        });  
    }     

});