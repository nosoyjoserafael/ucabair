document.addEventListener('DOMContentLoaded', function() {
    
    const entityName = 'empleados'; // Reemplaza con el nombre de la entidad
    const entityEndpoint = 'http://localhost:3000/empleado'; // Reemplazar con la URL del endpoint de la entidad

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

    async function getUsuariosDeEmpleados(){
        let usuarios = await fetch('http://localhost:3000/usuario')
        .then(async (response) => {
            const data = await response.json();            
            return data;
        })
        .catch((error) => {
            console.error('Error:', error);
        });
        usuarios = usuarios.filter(usuario => usuario.tipo_persona === 'personal');
        return usuarios;
    }

    function displayEntities() {
        fetch(entityEndpoint)
        .then(response => response.json())
        .then(async (data) => {
            entityTableBody.innerHTML = '';   
            const usuariosEmpleados = await getUsuariosDeEmpleados();
            const calcularNominaBtn = document.querySelector('#calcular-nominas-btn');            
            const codigosEmpleados = [];
            const dataValues = Object.values(data);

            dataValues.forEach(entity => {
                const row = document.createElement('tr');
                let usuario = usuariosEmpleados.find(usuario => usuario.per_cod === entity.Per_cod);
                if (usuario === undefined) {
                    usuario = 'No asignado';
                }
                
                //Se reemplazan las columnas por los atributos de la entidad
                row.innerHTML = `
                <td>${entity.Per_cod}</td>
                <td>${entity.Per_nombre}</td>
                <td>${entity.Per_Per_apellido}</td>
                <td>${entity.Per_ci}</td>
                <td>${entity.Per_Per_experiencia}</td>
                <td>${usuario.user_nombre}</td>
                <td>
                    <button class="calcular-nomina-btn">Calcular nomina particular</button>
                    <button class="edit-btn">Editar</button>
                    <button class="delete-btn">Eliminar</button>
                </td>
                `;
                const calcularNominaParticularButton = row.querySelector('.calcular-nomina-btn');
                const editButton = row.querySelector('.edit-btn');
                const deleteButton = row.querySelector('.delete-btn');
                calcularNominaParticularButton.addEventListener('click', () => calcularNomina([entity.Per_cod]));                
                editButton.addEventListener('click', () => modifyEntity(entity));
                deleteButton.addEventListener('click', () => deleteEntity(entity.Per_cod));
                entityTableBody.appendChild(row);
                codigosEmpleados.push(entity.Per_cod);
            });

            calcularNominaBtn.addEventListener('click', () => {
                calcularNomina(codigosEmpleados);       
            });

            $('#entity-table').DataTable();

        })
        .catch(error => console.error('Error:', error));
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

    function calcularNomina(entities){

        overlay.classList.add('visible');
        overlayTitle.textContent = `Calcular nómina(s)`;
        overlayForm.innerHTML = ''; //Limpiar el formulario antes de agregar los inputs
        overlayForm.appendChild(submitButton)
        overlayFormAction.textContent = `Calcular`;

        const inp1 = document.createElement('input');
        inp1.type = 'text';
        inp1.id = 'fecha-inicio';
        inp1.name = 'fecha-inicio';
        inp1.required = true;
        inp1.placeholder = 'Fecha de inicio (MM-DD-YYYY)';
        const inp2 = document.createElement('input');
        inp2.type = 'text';
        inp2.id = 'fecha-fin';
        inp2.name = 'fecha-fin';
        inp2.required = true;
        inp2.placeholder = 'Fecha de fin (MM-DD-YYYY)';

        overlayForm.insertBefore(inp1, submitButton);
        overlayForm.insertBefore(inp2, submitButton);

        overlayForm.addEventListener('submit', function(event) {
            overlayForm.innerHTML = '';
            event.preventDefault();
            const fechaInicio = inp1.value;         
            const fechaFin = inp2.value;
            const empleados = entities; 

            const nominaTable = document.createElement('table');
            const nominaTHead = document.createElement('thead');
            const nominaTBody = document.createElement('tbody');

            nominaTHead.innerHTML = `
            <tr>
                <th>ID</th>
                <th>Total Nomina</th>
                <th>Asistencias</th>
                <th>Sueldo base</th>
                <th>Sueldo horas extras</th>
                <th>Horas extra realizadas</th>
            </tr>
            `;
            nominaTable.appendChild(nominaTHead);
            nominaTable.appendChild(nominaTBody);
            overlayForm.appendChild(nominaTable);

            empleados.forEach(empleado => {
                fetch(`${entityEndpoint}/nomina/${empleado}/${fechaInicio}/${fechaFin}`)
                .then(response => response.json())
                .then(data => {
                    const dataValues = Object.values(data);
                
                    dataValues.forEach(personal => {
                        const row = document.createElement('tr');
                        row.innerHTML = `
                            <td>${personal.per_cod}</td>
                            <td>${personal.total_nomina}</td>
                            <td>${personal.asistencias}</td>
                            <td>${personal.sueldo_base}</td>
                            <td>${personal.sueldo_hora_extra}</td>
                            <td>${personal.horas_extra_realizadas}</td>
                        `;
                        nominaTBody.appendChild(row);
                    });
                })
                .catch((error) => {
                    console.error('Error:', error);
                });
            });
        });

    }

});