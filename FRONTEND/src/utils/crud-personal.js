document.addEventListener('DOMContentLoaded', function() {
    
    const entityName = 'empleados'; // Reemplaza con el nombre de la entidad
    const entityEndpoint = 'https://curly-couscous-9rv5rqjwpx62gxg-3000.app.github.dev/empleado'; // Reemplazar con la URL del endpoint de la entidad

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

    function getUsuariosDeEmpleados(){
        fetch('https://curly-couscous-9rv5rqjwpx62gxg-3000.app.github.dev/usuario')
        .then(async (response) => {
            const data = await response.json();
            const dataKeys = Object.keys(data[0]);
            const usuariosEmpleados = data.filter(usuario => usuario.tipo_persona === 'personal');
            return usuariosEmpleados;
        })
        .catch((error) => {
            console.error('Error:', error);
        });

    }

    function displayEntities() {
        fetch(entityEndpoint)
        .then(response => response.json())
        .then(data => {
            entityTableBody.innerHTML = '';   
            const usuariosEmpleados = getUsuariosDeEmpleados();     
            data.forEach(entity => {
                const row = document.createElement('tr');
                let usuario = usuariosEmpleados.find(usuario => usuario.per_cod === entity.Per_cod);
                if (usuario === undefined) {
                    usuario = 'No asignado';
                }
                
                //Se reemplazan las columnas por los atributos de la entidad
                row.innerHTML = `
                <td>${entity.Per_cod}</td>
                <td>${entity.Per_Per_nombre}</td>
                <td>${entity.Per_apellido}</td>
                <td>${entity.Per_ci}</td>
                <td>${entity.Per_Per_experiencia}</td>
                <td>${usuario}</td>
                <td>
                    <button class="edit-btn">Editar</button>
                    <button class="delete-btn">Eliminar</button>
                </td>
                `;
                const editButton = row.querySelector('.edit-btn');
                const deleteButton = row.querySelector('.delete-btn');
                editButton.addEventListener('click', () => modifyEntity(entity));
                deleteButton.addEventListener('click', () => deleteEntity(entity.Per_cod));
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
        const estados = [
            "Amazonas",
            "Anzoátegui",
            "Apure",
            "Aragua",
            "Barinas",
            "Bolívar",
            "Carabobo",
            "Cojedes",
            "Delta Amacuro",
            "Falcón",
            "Guárico",
            "Lara",
            "Mérida",
            "Miranda",
            "Monagas",
            "Nueva Esparta",
            "Portuguesa",
            "Sucre",
            "Táchira",
            "Trujillo",
            "Vargas",
            "Yaracuy",
            "Zulia",
            "Distrito Capital",
            "Dependencias Federales"
        ]

        const inp1 = document.createElement('input');
        inp1.type = 'text';
        inp1.placeholder = 'Nombre del empleado';
        inp1.required = true;
        inp1.name = 'Nombre';
        const inp2 = document.createElement('input');
        inp2.type = 'number';        
        inp2.placeholder = 'Cedula del empleado';
        inp2.required = true;
        inp2.min = 9000000;
        inp2.name = 'Cedula';
        const inp3 = document.createElement('input');
        inp3.type = 'text';
        inp3.placeholder = 'Apellido del empleado';
        inp3.required = true;
        inp3.name = 'Apellido';
        const inp4 = document.createElement('input');
        inp4.type = 'number';
        inp4.placeholder = 'Experiencia del empleado en años';
        inp4.required = true;
        inp4.name = 'Experiencia';
        const inp5 = document.createElement('select');
        inp5.name = 'Lugar de residencia';
        inp5.required = true;
        for (let i = 0; i < estados.length; i++) {
            const option = document.createElement('option');
            option.value = i+1;
            option.textContent = estados[i];
            inp5.appendChild(option);
        }
        const inp6 = document.createElement('input');
        inp6.type = 'text';
        inp6.placeholder = 'Dirección del empleado';
        inp6.required = true;
        inp6.name = 'Direccion del empleado';

        overlayForm.insertBefore(inp1, submitButton);
        overlayForm.insertBefore(inp2, submitButton);
        overlayForm.insertBefore(inp3, submitButton);
        overlayForm.insertBefore(inp4, submitButton);
        overlayForm.insertBefore(inp5, submitButton);
        overlayForm.insertBefore(inp6, submitButton);
        
        overlayForm.reset();

        overlayForm.addEventListener('submit', function(event) {
            event.preventDefault();

            fetch(entityEndpoint, {
                method: 'POST',
                headers: {
                'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    Per_nombre: inp1.value,
                    Per_ci: inp2.value,
                    Per_Per_apellido: inp3.value,
                    Per_Per_experiencia: inp4.value, 
                    fk_lugar: inp5.value, 
                    Per_dir: inp6.value
                })
            })
            .then(response => response.json())
            .then(data => {
                alert(data.message);
                displayEntities();
                window.location.reload();
            })
            .catch((error) => {
                console.error('Error:', error);
            }
            )
        });
    }

    function modifyEntity(entity) {
        overlay.classList.add('visible');
        overlayTitle.textContent = `Editar ${entityName}`;
        overlayForm.innerHTML = ''; //Limpiar el formulario antes de agregar los inputs
        overlayForm.appendChild(submitButton)
        overlayFormAction.textContent = `Guardar`;

        const estados = [
            "Amazonas",
            "Anzoátegui",
            "Apure",
            "Aragua",
            "Barinas",
            "Bolívar",
            "Carabobo",
            "Cojedes",
            "Delta Amacuro",
            "Falcón",
            "Guárico",
            "Lara",
            "Mérida",
            "Miranda",
            "Monagas",
            "Nueva Esparta",
            "Portuguesa",
            "Sucre",
            "Táchira",
            "Trujillo",
            "Vargas",
            "Yaracuy",
            "Zulia",
            "Distrito Capital",
            "Dependencias Federales"
        ]

        const inp1 = document.createElement('input');
        inp1.type = 'text';        
        inp1.value = entity.Per_nombre;
        inp1.required = true;
        inp1.name = 'Nombre';
        const inp2 = document.createElement('input');
        inp2.type = 'number';        
        inp2.value = entity.Per_ci;
        inp2.required = true;
        inp2.min = 9000000;
        inp2.name = 'Cedula';
        const inp3 = document.createElement('input');
        inp3.type = 'text';
        inp3.value = entity.Per_Per_apellido;
        inp3.required = true;
        inp3.name = 'Apellido';
        const inp4 = document.createElement('input');
        inp4.type = 'number';
        inp4.value = entity.Per_Per_experiencia;
        inp4.required = true;
        inp4.name = 'Experiencia';
        const inp5 = document.createElement('select');
        inp5.name = 'Lugar de residencia';
        inp5.required = true;
        for (let i = 0; i < estados.length; i++) {
            const option = document.createElement('option');
            option.value = i+1;
            option.textContent = estados[i];
            inp5.appendChild(option);
        }
        const inp6 = document.createElement('input');
        inp6.type = 'text';
        inp6.value = entity.Per_dir;
        inp6.required = true;
        inp6.name = 'Direccion del empleado';
        const inp7 = document.createElement('input');
        inp7.type = 'date';
        inp7.value = entity.Per_fecha_ini;
        inp7.required = true;
        inp7.name = 'Fecha de inicio del empleado';

        overlayForm.insertBefore(inp1, submitButton);
        overlayForm.insertBefore(inp2, submitButton);
        overlayForm.insertBefore(inp3, submitButton);
        overlayForm.insertBefore(inp4, submitButton);
        overlayForm.insertBefore(inp5, submitButton);
        overlayForm.insertBefore(inp6, submitButton);
        overlayForm.insertBefore(inp7, submitButton);
        
        overlayForm.addEventListener('submit', function(event) {
            event.preventDefault();

            fetch(`${entityEndpoint}/${entityId}`, {
                method: 'PUT',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    Per_cod: entity.Per_cod,
                    Per_nombre: inp1.value,
                    Per_ci: inp2.value,
                    Per_Per_apellido: inp3.value,
                    Per_Per_experiencia: inp4.value,
                    fk_lugar: inp5.value,
                    Per_dir: inp6.value,
                    Per_fecha_ini: inp7.value
                })
            })
            .then(response => response.json())
            .then(data => {
                overlayForm.id.value = data.id;
                overlayForm.name.value = data.name;
            })
            .catch((error) => {
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
                    Per_cod: entityId
                })
            })
            .then(response => response.json())
            .then(data => {
                alert(data.message);
                window.location.reload();
            })
            .catch((error) => {
                console.error('Error:', error);
            });
        });
    }

});