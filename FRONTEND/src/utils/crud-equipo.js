document.addEventListener('DOMContentLoaded', function() {
    
    const entityName = 'equipos'; // Reemplaza con el nombre de la entidad
    const entityEndpoint = 'https://curly-couscous-9rv5rqjwpx62gxg-3000.app.github.dev/equipo'; // Reemplazar con la URL del endpoint de la entidad

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
            data.forEach(entity => {
                const row = document.createElement('tr');

                let tReal = entity.tiempo_real;
                if(tReal == null){
                    tReal = "No asignado";
                }
                
                //Se reemplazan las columnas por los atributos de la entidad
                row.innerHTML = `
                <td>${entity.equi_cod}</td>
                <td>${entity.trabajo}</td>    
                <td>${entity.tiempo_estim}</td>
                <td>${tReal}</td>
                <td>
                    <button class="edit-btn">Editar</button>
                    <button class="delete-btn">Eliminar</button>
                </td>
                `;
                const editButton = row.querySelector('.edit-btn');
                const deleteButton = row.querySelector('.delete-btn');
                editButton.addEventListener('click', () => modifyEntity(entity));
                deleteButton.addEventListener('click', () => deleteEntity(entity.equi_cod));
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
        
        fetch('https://curly-couscous-9rv5rqjwpx62gxg-3000.app.github.dev/empleado')
            .then(response => response.json())
            .then(data => {
                let personal = Object.values(data);

                const employeesContainer = document.createElement('div');
                employeesContainer.id = 'employees';

                const addEmployeeButton = document.createElement('button');
                addEmployeeButton.textContent = 'Agregar';
                addEmployeeButton.addEventListener('click', () => {
                    const employeeDiv = document.createElement('div');
                    employeeDiv.classList.add('employees-id');

                    const employeeInput = document.createElement('input');
                    employeeInput.type = 'number';
                    employeeInput.required = true;
                    employeeInput.min = Math.min(...personal.map(emp => emp.id));
                    employeeInput.max = Math.max(...personal.map(emp => emp.id));

                    const removeButton = document.createElement('button');
                    removeButton.textContent = '-';
                    removeButton.addEventListener('click', () => {
                        employeesContainer.removeChild(employeeDiv);
                    });

                    employeeDiv.appendChild(employeeInput);
                    employeeDiv.appendChild(removeButton);
                    employeesContainer.appendChild(employeeDiv);
                });

                overlayForm.insertBefore(employeesContainer, submitButton);
                overlayForm.insertBefore(addEmployeeButton, submitButton);
            })
            .catch(error => console.error('Error obteniendo empleados:', error));

        const fechaEstim = document.createElement('input');
        fechaEstim.type = 'date';
        fechaEstim.name = 'fecha_estim';
        fechaEstim.required = true;
        overlayForm.insertBefore(fechaEstim, submitButton);
        const fechaReal = document.createElement('input');
        fechaReal.type = 'date';
        fechaReal.name = 'fecha_real';
        fechaReal.required = true;
        overlayForm.insertBefore(fechaReal, submitButton);

        overlayForm.reset();

        overlayForm.addEventListener('submit', function(event) {
            event.preventDefault();

            const employees = Array.from(overlayForm.querySelectorAll('.employees-id input')).map(input => input.value);

            fetch(entityEndpoint, {
                method: 'POST',
                headers: {
                'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    personal_cods: employees,
                    fecha_estim: fechaEstim.value,
                    fecha_real: fechaReal.value
                })
            })
            .then(response => response.json())
            .then(data => {
                alert(data.message);
                window.location.reload();
            })
            .catch((error) => {
                console.error('Error:', error);
            }
            );
        });
    }

    function modifyEntity(entity) {
        overlay.classList.add('visible');
        overlayTitle.textContent = `Editar ${entityName}`;
        overlayForm.innerHTML = ''; //Limpiar el formulario antes de agregar los inputs
        overlayForm.appendChild(submitButton)
        overlayFormAction.textContent = `Guardar`;
        
        const nombreTrabajo = document.createElement('input');
        nombreTrabajo.type = 'text';
        nombreTrabajo.name = 'nombre_trabajo';
        nombreTrabajo.required = true;
        nombreTrabajo.value = entity.trabajo;
        const fechaEstim = document.createElement('input');
        fechaEstim.type = 'date';
        fechaEstim.name = 'fecha_estim';
        fechaEstim.required = true;
        fechaEstim.value = entity.fecha_estim;
        const fechaReal = document.createElement('input');
        fechaReal.type = 'date';
        fechaReal.name = 'fecha_real';
        fechaReal.required = true;
        fechaReal.value = entity.fecha_real;    
        
        overlayForm.insertBefore(nombreTrabajo, submitButton);
        overlayForm.insertBefore(fechaEstim, submitButton);
        overlayForm.insertBefore(fechaReal, submitButton);
        overlayForm.reset();

        overlayForm.addEventListener('submit', function(event) {
            event.preventDefault();

            fetch(`${entityEndpoint}`, {
                method: 'PUT',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    nombre_trabajo: nombreTrabajo.value,
                    fecha_estim: fechaEstim.value,
                    fecha_real: fechaReal.value
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
                body: JSON.stringify({equi_cod: entityId})
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