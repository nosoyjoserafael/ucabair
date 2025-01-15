document.addEventListener('DOMContentLoaded', function() {

    // Obtener los parámetros de la URL
    const urlParams = new URLSearchParams(window.location.search);
    const entityId = urlParams.get('entityId');
    const price = urlParams.get('price');

    const form = document.getElementById('form-pago');    
    const selectMetodoPago = document.getElementById('metodo-pago');

    selectMetodoPago.addEventListener('change', function() {
        const metodoPago = this.value;
        const metodoPagoDivs = document.querySelectorAll('.metodo-pago');                   
        for(let i = 0; i < metodoPagoDivs.length; i++) {
            if(i+1 == metodoPago) 
                metodoPagoDivs[i].style.display = 'block';
             else
                metodoPagoDivs[i].style.display = 'none';        
        }
    });

    /*
    Pago del avion

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
    });*/

})