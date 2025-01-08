document.addEventListener('DOMContentLoaded', function() {
    const entityName = 'proveedor'; // Reemplaza con el nombre de la entidad
    const entityEndpoint = '/api/entidad'; // Replace with the actual API endpoint

    document.getElementById('entity-name').textContent = entityName;
    document.getElementById('entity-name-add').textContent = entityName;
    document.getElementById('entity-name-list').textContent = entityName;
    document.getElementById('entity-name-overlay').textContent = entityName;

    const addForm = document.getElementById('add-form');
    const entityTableBody = document.querySelector('#entity-table tbody');
    const overlay = document.getElementById('generic-overlay');
    const overlayForm = document.getElementById('overlay-form');
    const overlayTitle = document.getElementById('overlay-title');

    addForm.addEventListener('submit', async function(event) {
        event.preventDefault();
        const formData = new FormData(addForm);
        const data = Object.fromEntries(formData.entries());

        try {
            const response = await fetch(entityEndpoint, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(data)
            });
            if (!response.ok) {
                throw new Error('Error al agregar la entidad');
            }
            const newEntity = await response.json();
            addEntityToTable(newEntity);
            addForm.reset();
        } catch (error) {
            console.error('Error:', error);
        }
    });

    async function fetchEntities() {
        try {
            const response = await fetch(entityEndpoint);
            if (!response.ok) {
                throw new Error('Error al obtener las entidades');
            }
            const entities = await response.json();
            entities.forEach(addEntityToTable);
        } catch (error) {
            console.error('Error:', error);
        }
    }

    function addEntityToTable(entity) {
        const row = document.createElement('tr');
        // Add table cells based on entity properties
        row.innerHTML = `
            <td>${entity.id}</td>
            <td>${entity.nombre}</td>
            <td>${entity.descripcion}</td>
            <td>
                <button onclick="editEntity(${entity.id})">Editar</button>
                <button onclick="deleteEntity(${entity.id})">Eliminar</button>
            </td>
        `;
        entityTableBody.appendChild(row);
    }

    window.editEntity = async function(id) {
        overlay.classList.remove('hidden');
        overlay.classList.add('visible');
        overlayTitle.textContent = `Modificar ${entityName}`;
        overlayForm.innerHTML = `
            <label for="nombre">Nombre:</label>
            <input type="text" id="nombre" name="nombre" required>
            <label for="descripcion">Descripción:</label>
            <input type="text" id="descripcion" name="descripcion" required>
        `;
        overlayForm.onsubmit = async function(event) {
            event.preventDefault();
            const formData = new FormData(overlayForm);
            const data = Object.fromEntries(formData.entries());
            try {
                const response = await fetch(`${entityEndpoint}/${id}`, {
                    method: 'PUT',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify(data)
                });
                if (!response.ok) {
                    throw new Error('Error al modificar la entidad');
                }
                const updatedEntity = await response.json();
                updateEntityInTable(updatedEntity);
                overlay.classList.add('hidden');
                overlay.classList.remove('visible');
            } catch (error) {
                console.error('Error:', error);
            }
        };
    };

    window.deleteEntity = async function(id) {
        try {
            const response = await fetch(`${entityEndpoint}/${id}`, {
                method: 'DELETE'
            });
            if (!response.ok) {
                throw new Error('Error al eliminar la entidad');
            }
            document.querySelector(`#entity-table tbody tr[data-id="${id}"]`).remove();
        } catch (error) {
            console.error('Error:', error);
        }
    };

    function updateEntityInTable(entity) {
        const row = document.querySelector(`#entity-table tbody tr[data-id="${entity.id}"]`);
        row.innerHTML = `
            <td>${entity.id}</td>
            <td>${entity.nombre}</td>
            <td>${entity.descripcion}</td>
            <td>
                <button onclick="editEntity(${entity.id})">Editar</button>
                <button onclick="deleteEntity(${entity.id})">Eliminar</button>
            </td>
        `;
    }

    overlay.addEventListener('click', function(event) {
        if (event.target === overlay) {
            overlay.classList.add('hidden');
            overlay.classList.remove('visible');
        }
    });

    fetchEntities();
});