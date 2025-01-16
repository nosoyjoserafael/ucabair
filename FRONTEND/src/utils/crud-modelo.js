document.addEventListener('DOMContentLoaded', async function() {
    
    const entityName = 'modelos'; // Reemplaza con el nombre de la entidad
    const entityEndpoint = 'https://curly-couscous-9rv5rqjwpx62gxg-3000.app.github.dev/modelo'; // Reemplazar con la URL del endpoint de la entidad

    document.getElementById('entity-name').textContent = entityName;
    document.getElementById('entity-name-list').textContent = entityName;
    document.getElementById('entity-name-overlay').textContent = entityName;

    document.getElementById('entity-table').DataTable()
    const entityTableBody = document.querySelector('#entity-table tbody');
    const overlay = document.getElementById('generic-overlay');
    const overlayForm = document.getElementById('overlay-form');
    const submitButton = overlayForm.querySelector('button[type="submit"]');
    const overlayTitle = document.getElementById('overlay-title');
    const addEntityButton = document.getElementById('add-entity-btn');
    const reportsBtn = document.getElementById('reports-btn');
    const mostUsedWingsBtn = document.getElementById('most-used-wings-btn');
    const overlayFormAction = document.getElementById('overlay-form-action');
    
    if(localStorage.getItem('token').includes('admin') || localStorage.getItem('token').includes('empleado')) {        
        console.log('El usuario tiene permisos para gestionar la entidad');
    }
    else{
        console.log('El usuario no tiene permisos para gestionar la entidad');
        addEntityButton.remove();        
        reportsBtn.remove();
        mostUsedWingsBtn.remove();
    }

    displayEntities();
    
    const caracterisitcas = await obtenerCaracteristicas();
    
    addEntityButton.addEventListener('click', () => addEntity());
    reportsBtn.addEventListener('click', async () => {
        await dowloadReports();        
    });
    mostUsedWingsBtn.addEventListener('click', async () => {
        mostUsedWings();
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
                if(localStorage.getItem('token').includes('admin') || localStorage.getItem('token').includes('empleado')){
                row.innerHTML = `
                    <td>${entity.cod}</td>
                    <td>${entity.nombre}</td>
                    <td>${entity.costo}</td>
                    <td>
                        <button class="caracteristhics-btn">Ver Características</button>
                        <button class="buy-btn">Comprar</button>                               
                        <button class="edit-btn">Editar</button>
                        <button class="delete-btn">Eliminar</button>
                    </td>
                    `;
                    const editButton = row.querySelector('.edit-btn');
                    const deleteButton = row.querySelector('.delete-btn');
                    const caracteristhicsButton = row.querySelector('.caracteristhics-btn');
                    caracteristhicsButton.addEventListener('click', () => verCaracteristicas(entity.nombre));
                    editButton.addEventListener('click', () => modifyEntity(entity.nombre));
                    deleteButton.addEventListener('click', () => deleteEntity(entity.nombre));
                    const buyButton = row.querySelector('.buy-btn');
                    buyButton.addEventListener('click', () => buyEntity(entity.cod));
                }
                else{
                    row.innerHTML = `
                    <td>${entity.cod}</td>
                    <td>${entity.nombre}</td>
                    <td>${entity.costo}</td>
                    <td>
                        <button class="caracteristhics-btn">Ver Características</button>
                        <button class="buy-btn">Comprar</button>                               
                    </td>
                    `;
                    const caracteristhicsButton = row.querySelector('.caracteristhics-btn');
                    caracteristhicsButton.addEventListener('click', () => verCaracteristicas(entity));
                    const buyButton = row.querySelector('.buy-btn');
                    buyButton.addEventListener('click', () => buyEntity(entity.cod));
                }

                entityTableBody.appendChild(row);
                
            });
        })
        .catch(error => console.error('Error:', error));        
    }

    function verCaracteristicas(entity) {
        overlay.classList.add('visible');
        overlayTitle.textContent = `Características del ${entityName} ${entity}`;
        overlayForm.innerHTML = ''; //Limpiar el formulario antes de agregar los inputs
        overlayForm.appendChild(submitButton)
        overlayFormAction.textContent = `Cerrar`;
                
        let keys = Object.keys(caracterisitcas[entity]);
        let values = Object.values(caracterisitcas[entity]);

        for (let i = 0; i < keys.length; i++) {

            const label = document.createElement('label');
            label.textContent = `${keys[i]}`;
            label.htmlFor = keys[i];
            const input = document.createElement('input');
            input.type = 'text';
            input.name = keys[i];
            input.value = values[i];
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

        const caracModelo = caracterisitcas[entity];
        const dataKeys = Object.keys(caracModelo);

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

            event.preventDefault();

            fetch(`${entityEndpoint}`, {
                method: 'PUT',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    Nombre: entity,
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
            return data;
        } catch (error) {
            console.error('Error:', error);
            return [];
        }
    }

    function buyEntity(entityId) {        
        localStorage.setItem('avionId', entityId);
        window.location.href = "./pago.html";
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

    async function mostUsedWings(){
        overlay.classList.add('visible');
        overlayTitle.textContent = `Alas  más utilizadas entre aviones`;
        overlayForm.innerHTML = ''; //Limpiar el formulario antes de agregar los inputs
        overlayForm.appendChild(submitButton)
        overlayFormAction.textContent = `Ok`;                            

        const nominaTable = document.createElement('table');
        const nominaTHead = document.createElement('thead');
        const nominaTBody = document.createElement('tbody');

        nominaTHead.innerHTML = `
        <tr>
            <th>ID</th>
            <th>Nombre de tipo de ala</th>
            <th>Numero de modelos que la usan</th>
        </tr>
        `;
        nominaTable.appendChild(nominaTHead);
        nominaTable.appendChild(nominaTBody);
        overlayForm.appendChild(nominaTable);
        
        fetch(`${entityEndpoint}/alas`)
        .then(response => response.json())
        .then(data => {
            const dataValues = Object.values(data);        
            dataValues.forEach(ala => {
                const row = document.createElement('tr');
                row.innerHTML = `
                    <td>${ala.tipo_pieza_ala_id}</td>
                    <td>${ala.nombre_ala}</td>
                    <td>${ala.n_modelos_con_ala}</td>
                `;
                nominaTBody.appendChild(row);
            });
        })
        .catch((error) => {
            console.error('Error:', error);
        });
        
    }

});