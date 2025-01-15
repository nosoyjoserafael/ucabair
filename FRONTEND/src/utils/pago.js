document.addEventListener('DOMContentLoaded', async function() {

    const entityEndpoint = "https://curly-couscous-9rv5rqjwpx62gxg-3000.app.github.dev/pago";

    // Obtener los parámetros de la URL
    const urlParams = new URLSearchParams(window.location.search);
    const entityId = urlParams.get('entityId');
    const price = urlParams.get('price');

    const form = document.getElementById('form-pago'); 
    const montoTotalSpan = document.getElementById('monto-total');
    const monedaSpan = document.getElementById('moneda');
    
    montoTotalSpan.textContent = `${price}`;
    monedaSpan.textContent = 'BS';

    const selectMetodoPago = document.getElementById('metodo-pago');
    const selectTasaDeCambio = document.getElementById('tasa-cambio');

    //const tasasDeCambio = await getTasasDeCambio();

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

    selectTasaDeCambio.addEventListener('change', function() {
        const tasaDeCambio = this.value;
        let montoTotal = Number(price);

        if(tasaDeCambio === 0){
            montoTotal.textContent = montoTotal;
            monedaSpan.textContent = "BS";            
        }
        for(let i = 0; i < tasasDeCambio.length; i++) {
            if(tasasDeCambio[i].tdc_cod == tasaDeCambio) {
                montoTotal = montoTotal/tasasDeCambio[i].tdc_valor;
                montoTotalSpan.textContent = montoTotal;
                monedaSpan.textContent = tasasDeCambio[i].tdc_mon_origen;
                break;
            }
        }

    });

    async function getTasasDeCambio(){
        const response = await fetch(`${entityEndpoint}/tasa-cambio`);
        const data = await response.json();        
        return Object(data).values;
    }

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