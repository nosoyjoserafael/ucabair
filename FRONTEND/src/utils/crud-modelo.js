document.addEventListener('DOMContentLoaded', async function() {
    
    const entityName = 'modelos'; // Reemplaza con el nombre de la entidad
    const entityEndpoint = 'https://curly-couscous-9rv5rqjwpx62gxg-3000.app.github.dev/modelo'; // Reemplazar con la URL del endpoint de la entidad

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
    
    if(!localStorage.getItem('token').includes('admin') || !localStorage.getItem('token').includes('empleado')) {
        console.log('El usuario tiene permisos para gestionar la entidad');
        addEntityButton.remove();        
        document.getElementById('reports-btn').remove();
    }

    displayEntities();
    
    const caracterisitcas = await obtenerCaracteristicas();
    

    addEntityButton.addEventListener('click', () => addEntity());
    document.getElementById('reports-btn').addEventListener('click', async () => {
        await dowloadReports();        
    });

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
                
                //Se reemplazan las columnas por los atributos de la entidad
                row.innerHTML = `
                    <td>${entity.cod}</td>
                    <td>${entity.nombre}</td>
                    <td>
                        <button class="buy-btn">Comprar</button>
                `;
                if(localStorage.getItem('token').includes('admin') || localStorage.getItem('token').includes('empleado')){
                    row.innerHTML += `                                
                        <button class="buy-btn">Comprar</button>
                        <button class="caracteristhics-btn">Ver Características</button>
                        <button class="edit-btn">Editar</button>
                        <button class="delete-btn">Eliminar</button>
                    `;
                    const editButton = row.querySelector('.edit-btn');
                    const deleteButton = row.querySelector('.delete-btn');
                    const caracteristhicsButton = row.querySelector('.caracteristhics-btn');
                    caracteristhicsButton.addEventListener('click', () => verCaracteristicas(entity));
                    editButton.addEventListener('click', () => modifyEntity(entity));
                    deleteButton.addEventListener('click', () => deleteEntity(entity.nombre));
                }
                row.innerHTML += `
                    </td>
                `;
                const buyButton = row.querySelector('.buy-btn');
                buyButton.addEventListener('click', () => buyEntity(entity.cod));
                entityTableBody.appendChild(row);
                
            });
        })
        .catch(error => console.error('Error:', error));        
    }

    function verCaracteristicas(entity) {
        overlay.classList.add('visible');
        overlayTitle.textContent = `Características del ${entityName} ${entity.nombre}`;
        overlayForm.innerHTML = ''; //Limpiar el formulario antes de agregar los inputs
        overlayForm.appendChild(submitButton)
        overlayFormAction.textContent = `Cerrar`;

        const caracModelo = caracterisitcas[entity.cod-1];
        const dataKeys = Object.keys(caracModelo);
        const dataValues = Object.values(caracModelo);      

        for (let i = 0; i < dataKeys.length; i++) {
            const label = document.createElement('label');
            label.textContent = `${dataKeys[i]}`;
            label.htmlFor = dataKeys[i];
            const input = document.createElement('input');
            input.type = 'text';
            input.name = dataKeys[i];
            input.value = dataValues[i];
            input.disabled = true;
            overlayForm.insertBefore(label, submitButton);
            overlayForm.insertBefore(input, submitButton);
        }        
        
    }

    function addEntity() { 
        overlay.classList.add('visible');
        overlayTitle.textContent = `Agregar ${entityName}`;
        overlayForm.innerHTML = ''; //Limpiar el formulario antes de agregar los inputs
        overlayForm.appendChild(submitButton)
        overlayFormAction.textContent = `Guardar`;
        
        const inp1 = document.createElement('input');
        inp1.type = 'text';
        inp1.required = true;
        inp1.name = 'Nombre';
        inp1.placeholder = 'Nombre';
        const inp2 = document.createElement('input');
        inp2.type = 'number';
        inp2.required = true;
        inp2.name = 'Capacidad de tripulación';
        inp2.placeholder = 'Capacidad de tripulación';
        const inp3 = document.createElement('input');
        inp3.type = 'number';
        inp3.required = true;
        inp3.name = 'Capacidad de pasajeros';
        inp3.placeholder = 'Capacidad de pasajeros';
        const inp4 = document.createElement('input');
        inp4.type = 'number';
        inp4.required = true;
        inp4.name = 'Longitud';
        inp4.placeholder = 'Longitud';
        const inp5 = document.createElement('input');
        inp5.type = 'number';
        inp5.required = true;    
        inp5.name = 'Envergadura';
        inp5.placeholder = 'Envergadura';
        const inp6 = document.createElement('input');
        inp6.type = 'number';
        inp6.required = true;        
        inp6.name = 'Altura';
        inp6.placeholder = 'Altura';
        const inp7 = document.createElement('input');
        inp7.type = 'number';
        inp7.required = true;
        inp7.name = 'Flecha Alar';
        inp7.placeholder = 'Flecha Alar';
        const inp8 = document.createElement('input');
        inp8.type = 'number';
        inp8.required = true;
        inp8.name = 'Peso vacío';
        inp8.placeholder = 'Peso vacío';
        const inp9 = document.createElement('input');
        inp9.type = 'number';
        inp9.required = true;
        inp9.name = 'Peso máximo de  despegue';
        inp9.placeholder = 'Peso máximo de despegue';
        const inp10 = document.createElement('input');
        inp10.type = 'number';
        inp10.required = true;
        inp10.name = 'Peso máximo de aterrizaje';
        inp10.placeholder = 'Peso máximo de aterrizaje';
        const inp11 = document.createElement('input');
        inp11.type = 'number';
        inp11.required = true;
        inp11.name = 'Velocidad máxima';
        inp11.placeholder = 'Velocidad máxima';
        const inp12 = document.createElement('input');
        inp12.type = 'number';
        inp12.required = true;
        inp12.name = 'Velocidad de crucero';
        inp12.placeholder = 'Velocidad crucero';
        const inp13 = document.createElement('input');
        inp13.type = 'number';
        inp13.required = true;
        inp13.name = 'Capacidad maxima de combustible';
        inp13.placeholder = 'Capacidad de combustible';
        const inp14 = document.createElement('input');
        inp14.type = 'number';
        inp14.required = true;
        inp14.name = 'Cantidad de motores';
        inp14.placeholder = 'Cantidad de motores';
    
        overlayForm.insertBefore(inp1, submitButton);
        overlayForm.insertBefore(inp2, submitButton);
        overlayForm.insertBefore(inp3, submitButton);
        overlayForm.insertBefore(inp4, submitButton);
        overlayForm.insertBefore(inp5, submitButton);
        overlayForm.insertBefore(inp6, submitButton);
        overlayForm.insertBefore(inp7, submitButton);
        overlayForm.insertBefore(inp8, submitButton);
        overlayForm.insertBefore(inp9, submitButton);
        overlayForm.insertBefore(inp10, submitButton);
        overlayForm.insertBefore(inp11, submitButton);
        overlayForm.insertBefore(inp12, submitButton);
        overlayForm.insertBefore(inp13, submitButton);
        overlayForm.insertBefore(inp14, submitButton);

        overlayForm.reset();

        overlayForm.addEventListener('submit', function(event) {
            event.preventDefault();

            fetch(entityEndpoint, {
                method: 'POST',
                headers: {
                'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    Nombre: inp1.value,
                    Cap_tripulacion: inp2.value, 
                    Cap_pasajero: inp3.value, 
                    Longitud: inp4.value, 
                    Envergadura: inp5.value, 
                    Altura: inp6.value, 
                    Flecha_alar: inp7.value, 
                    Peso_vacio: inp8.value, 
                    Peso_max_despegue: inp9.value, 
                    Peso_max_aterrizaje: inp10.value, 
                    Velocidad_crucero: inp11.value, 
                    Velocidad_max: inp12.value, 
                    Capacidad_max_combustible: inp13.value, 
                    Motor: inp14.value
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
        overlayTitle.textContent = `Editar ${entityName} ${entity.nombre}`;
        overlayForm.innerHTML = ''; //Limpiar el formulario antes de agregar los inputs
        overlayForm.appendChild(submitButton)
        overlayFormAction.textContent = `Guardar`;

        const caracModelo = caracterisitcas[entity.cod-1];
        const dataKeys = Object.keys(caracModelo);
        const dataValues = Object.values(caracModelo);

        const selectCaracteristicas = document.createElement('select');
        selectCaracteristicas.name = 'Caracteristicas';
        selectCaracteristicas.required = true;
        selectCaracteristicas.placeholder = 'Caracteristicas';
        for (let i = 0; i < dataKeys.length; i++) {
            const option = document.createElement('option');
            option.value = dataKeys[i];
            option.textContent = dataKeys[i];
            selectCaracteristicas.appendChild(option);
        }

        const inp1 = document.createElement('input');
        inp1.type = 'number';
        inp1.required = true;

        overlayForm.insertBefore(selectCaracteristicas, submitButton);
        overlayForm.insertBefore(inp1, submitButton);
                    
        overlayForm.reset();
        
        overlayForm.addEventListener('submit', function(event) {
            console.log(entity.nombre);
            console.log(selectCaracteristicas.value);
            console.log(inp1.value);
            event.preventDefault();

            fetch(`${entityEndpoint}`, {
                method: 'PUT',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    Nombre: entity.nombre,
                    caracteristica: selectCaracteristicas.value,
                    valor: inp1.value
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

    function deleteEntity(entityNombre) {
        overlay.classList.add('visible');
        overlayTitle.textContent = `¿Está seguro de que desea\neliminar el modelo ${entityNombre}?`;
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
                body: JSON.stringify({ Nombre: entityNombre })  
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

    async function obtenerCaracteristicas() {
        try {
            const response = await fetch(`${entityEndpoint}/caracteristica`);
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            const data = await response.json();
            const caracteristhicsValues = Object.values(data);
            return caracteristhicsValues;
        } catch (error) {
            console.error('Error:', error);
            return [];
        }
    }

    function buyEntity(entityId) {
        fetch(`${entityEndpoint}/comprar`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({
                modelo: entityId
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
    }

    async function dowloadReports(){
        fetch('https://curly-couscous-9rv5rqjwpx62gxg-3000.app.github.dev/reporte/18')
        .then(response => response.blob())
        .then(blob => {
            const url = URL.createObjectURL(blob);
            const a = document.createElement('a');
            a.href = url;
            a.download = 'reporteModelosConSusPiezas.pdf';
            a.click();
            URL.revokeObjectURL(url);
        
        })
        .catch((error) => {
            console.error('Error:', error);
        });
    }

});