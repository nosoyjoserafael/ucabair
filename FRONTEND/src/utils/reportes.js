document.addEventListener('DOMContentLoaded', function() {
    
    const entityName = 'reportes'; // Reemplaza con el nombre de la entidad
    const entityEndpoint = 'http://localhost:3000/reporte'; // Reemplazar con la URL del endpoint de la entidad

    document.getElementById('entity-name').textContent = entityName;
    document.getElementById('entity-name-list').textContent = entityName;
    document.getElementById('entity-name-overlay').textContent = entityName;

    const entityTableBody = document.querySelector('#entity-table tbody');
    const overlay = document.getElementById('generic-overlay');

    displayEntities();

    overlay.addEventListener('click', function(event) {
        if (event.target === overlay) {
            overlay.classList.remove('visible');
        }
    });

    function displayEntities() {       
        entityTableBody.innerHTML = '';
        const data = [
            { 'Ubicacion y estatus de Piezas': 5},
            { 'Mejores 10 clientes': 6},
            {"Equipo más eficiente": 7},
            { 'Ala más usada': 8},
            { 'Modelos de avion con sus caracteristicas': 9},
            { 'Productos que no cumplieron con las pruebas de calidad': 10},
            { 'Inventario detallado por mes': 11},
            { 'Aviones más rentables': 12},
            { 'Promedio de produccion mensual por sede': 13},
            { 'Materiales ofrecidos por los proveedores': 15},
            { 'Ingresos al inventario por solicitudes a proveedores': 16},
            { 'Pagos realizados a proveedores': 17},
            { 'Modelos de avion con sus piezas': 18},
            { 'Empleados con su horario': 20},
            { 'Empleados con sus proyectos asignados': 21}
        ]

        data.forEach(entity => {
            const dataKey = Object.keys(entity);
            const dataValue = Object.values(entity);
            const row = document.createElement('tr');
            
            //Se reemplazan las columnas por los atributos de la entidad
            row.innerHTML = `
            <td>${dataKey}</td>
            <td>
                <button class="download-btn">Descargar reporte</button>
            </td>
            `;
            const downloadButton = row.querySelector('.download-btn');
            downloadButton.addEventListener('click', () => dowloadReport(dataKey,dataValue));
            entityTableBody.appendChild(row);
        });
        $('#entity-table').DataTable();
    }

    async function dowloadReport(nombre,id){
        try {
            const response = await fetch(`${entityEndpoint}/${id}`);
            if (!response.ok) {
              throw new Error('Network response was not ok');
            }
            const blob = await response.blob();
            const url = window.URL.createObjectURL(blob);
            const a = document.createElement('a');
            a.style.display = 'none';
            a.href = url;
            a.download = `${nombre}.pdf`;
            document.body.appendChild(a);
            a.click();
            window.URL.revokeObjectURL(url);
            alert('Reporte descargado con éxito');
          } catch (error) {
            console.error('Error:', error);
          }
    }

});