document.addEventListener('DOMContentLoaded', function() {
    
    const entityName = 'asistencia'; // Reemplaza con el nombre de la entidad
    const entityEndpoint = 'http://localhost:3000/asistencia'; // Reemplazar con la URL del endpoint de la entidad

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
        const idHeader = document.querySelector('#entity-table th:first-child');
        const nameHeader = document.querySelector('#entity-table th:nth-child(2)');
        const actionsHeader = document.querySelector('#entity-table th:last-child');
        if (actionsHeader) {
            idHeader.remove();
            nameHeader.remove();
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
        if (localStorage.getItem('token').includes('admin')) {
            fetch(entityEndpoint)
            .then(response => response.json())
            .then(data => {
                entityTableBody.innerHTML = '';
                const dataValues = Object.values(data);
                dataValues.forEach(entity => {
                    const row = document.createElement('tr');
                    
                    //Se reemplazan las columnas por los atributos de la entidad
                    row.innerHTML = `
                    <td>${entity.fk_personal}</td>
                    <td>${entity.nombre_personal}</td> 
                    <td>${entity.asis_fecha_asistida.split('T')[0]}</td>
                    <td>${entity.asis_hora_asistida}</td>
                    <td>${entity.asis_hora_salida}</td>                 
                    <td>
                        <button class="edit-btn">Editar</button>
                        <button class="delete-btn">Eliminar</button>
                    </td>
                    `;
                    const editButton = row.querySelector('.edit-btn');
                    const deleteButton = row.querySelector('.delete-btn');
                    editButton.addEventListener('click', () => modifyEntity(entity));
                    deleteButton.addEventListener('click', () => deleteEntity(entity.asis_cod));
    
                    entityTableBody.appendChild(row);
                });
                $('#entity-table').DataTable();
            })
            .catch(error => console.error('Error:', error));
        }
        else if(localStorage.getItem('token').includes('empleado')){
            fetch(`${entityEndpoint}/particular/${localStorage.getItem('id')}`)
            .then(response => response.json())
            .then(data => {
                entityTableBody.innerHTML = '';
                const dataValues = Object.values(data);                
                dataValues.forEach(entity => {
                    const row = document.createElement('tr');
                    
                    //Se reemplazan las columnas por los atributos de la entidad
                    row.innerHTML = `
                    <td>${entity.asis_fecha_asistida.split('T')[0]}</td>
                    <td>${entity.asis_hora_entrada}</td>
                    <td>${entity.asis_hora_salida}</td>                                                        
                    `;  
                    
                    entityTableBody.appendChild(row);
                });
                $('#entity-table').DataTable();
            })
            .catch(error => console.error('Error:', error));
        }
        
    }

    function addEntity() { 
        overlay.classList.add('visible');
        overlayTitle.textContent = `Agregar ${entityName}`;
        overlayForm.innerHTML = ''; //Limpiar el formulario antes de agregar los inputs
        overlayForm.appendChild(submitButton)
        overlayFormAction.textContent = `Guardar`;        
        const selectEmpleado = document.createElement('select');

        if(localStorage.getItem('token').includes('admin')){
            selectEmpleado.name = 'empleados';
            selectEmpleado.id = 'empleados';
            selectEmpleado.innerHTML = `<option value="">Seleccione un empleado</option>`;
            fetch(entityEndpoint)
            .then(response => response.json())
            .then(data => {
                const dataValues = Object.values(data);
                const uniqueEntities = dataValues.filter((entity, index, self) =>
                    index === self.findIndex((e) => e.fk_personal === entity.fk_personal)
                );
                uniqueEntities.forEach(entity => {
                    const option = document.createElement('option');
                    option.value = entity.fk_personal;
                    option.textContent = entity.nombre_personal;
                    selectEmpleado.appendChild(option);
                }); 
            }); 
            overlayForm.insertBefore(selectEmpleado, submitButton);
        }
        else{
            selectEmpleado.remove();
        }
            
        const inp1 = document.createElement('input');
        inp1.type = 'date';
        inp1.name = 'fecha';
        inp1.id = 'fecha';
        inp1.required = true;
        inp1.placeholder = 'Fecha';
        
        inp1.required = true;
        const inp2 = document.createElement('input');
        inp2.type = 'time';
        inp2.name = 'horaEntrada';
        inp2.id = 'horaEntrada';
        inp2.placeholder = 'Hora de Entrada';
        inp2.required = true;
        inp2.step = 1;

        const inp3 = document.createElement('input');
        inp3.type = 'time';
        inp3.name = 'horaSalida';
        inp3.id = 'horaSalida';
        inp3.placeholder = 'Hora de Salida';
        inp3.required = true;
        inp3.step = 1;
        
        overlayForm.insertBefore(inp1, submitButton);
        overlayForm.insertBefore(inp2, submitButton);
        overlayForm.insertBefore(inp3, submitButton);    

        overlayForm.addEventListener('submit', function(event) {            
            event.preventDefault();  

            let per_cod;
            
            if(localStorage.getItem('token').includes('empleado')){
                per_cod = localStorage.getItem('id');
            }
            else{
                per_cod = selectEmpleado.value;
            }

            fetch(entityEndpoint, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    fecha: inp1.value,
                    horaEntrada: inp2.value,
                    horaSalida: inp3.value,
                    usuario: null,
                    per_cod: per_cod
                })
            })
            .then(response => response.json())
            .then(data => {
                alert(data.message);
                window.location.reload();
            })
            .catch(error => console.error('Error:', error));                                
        });
        
    }

    function modifyEntity(entity) {
        overlay.classList.add('visible');
        overlayTitle.textContent = `Editar ${entityName}`;
        overlayForm.innerHTML = ''; //Limpiar el formulario antes de agregar los inputs
        overlayForm.appendChild(submitButton)
        overlayFormAction.textContent = `Guardar`;
        
        const inp1 = document.createElement('input');
        inp1.type = 'date';
        inp1.name = 'fecha';
        inp1.id = 'fecha';
        inp1.value = entity.asis_fecha_asistida.split('T')[0];
        inp1.required = true;
        inp1.placeholder = 'Fecha';
        
        inp1.required = true;
        const inp2 = document.createElement('input');
        inp2.type = 'time';
        inp2.name = 'horaEntrada';
        inp2.id = 'horaEntrada';
        inp2.placeholder = 'Hora de Entrada';
        inp2.value = entity.asis_hora_asistida;
        inp2.required = true;
        inp2.step = 1;

        const inp3 = document.createElement('input');
        inp3.type = 'time';
        inp3.name = 'horaSalida';
        inp3.id = 'horaSalida';
        inp3.placeholder = 'Hora de Salida';
        inp3.value = entity.asis_hora_salida;
        inp3.required = true;
        inp3.step = 1;
        
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
                    ass_cod: entity.asis_cod,
                    fecha: inp1.value,
                    horaEntrada: inp2.value,
                    horaSalida: inp3.value,
                })
            })
            .then(response => response.json())
            .then(data => {
                alert(data.message);
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

        overlayForm.addEventListener('submit', (event)=>{
            event.preventDefault()
            fetch(`${entityEndpoint}`, {
                method: 'DELETE',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    ass_cod: entityId              
                })
            })
            .then(response => response.json())
            .then(data => {
                alert(data.message);
                window.location.reload();
            })
            .catch(error => {
                console.error('Error:', error);
            });
        });
    }

});