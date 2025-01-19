document.addEventListener('DOMContentLoaded', async function() {

    const entityEndpoint = "http://localhost:3000/compra";

    //definir valores
    const clienteId = localStorage.getItem('idCliente');
    const entityId = localStorage.getItem('avionId');
    const price = localStorage.getItem('avionPrecio');

    const form = document.getElementById('form-pago'); 
    const montoTotalSpan = document.getElementById('monto-total');
    const monedaSpan = document.getElementById('moneda');
    
    montoTotalSpan.textContent = `${price}`;
    monedaSpan.textContent = 'BS';

    const selectMetodoPago = document.getElementById('metodo-pago');
    const selectTasaDeCambio = document.getElementById('tasa-cambio');

    const tasasDeCambio = await getTasasDeCambio();

    selectMetodoPago.addEventListener('change', function() {
        const metodoPago = this.value;
        const metodoPagoDivs = document.querySelectorAll('.metodo-pago');                   
        for(let i = 0; i < metodoPagoDivs.length; i++) {
            if(i+1 == metodoPago) {
                metodoPagoDivs[i].style.display = 'block';                

                form.addEventListener('submit', function(e) {
                    e.preventDefault();
                    efectuarCompra(metodoPago,metodoPagoDivs[i]);
                });
            }
             else
                metodoPagoDivs[i].style.display = 'none';        
        }
    });

    selectTasaDeCambio.addEventListener('change', function() {
        const tasaDeCambio = this.value;
        let montoTotal = Number(price);

        if(tasaDeCambio == 0){
            montoTotalSpan.textContent = montoTotal;
            monedaSpan.textContent = "BS";            
        }
        else{
            for(let i = 0; i < tasasDeCambio.length; i++) {
                if(tasasDeCambio[i].tdc_cod == tasaDeCambio) {
                    montoTotal = montoTotal/tasasDeCambio[i].tdc_valor;
                    montoTotalSpan.textContent = montoTotal;
                    monedaSpan.textContent = tasasDeCambio[i].tdc_mon_origen;
                    break;
                }
            }
        }
    });

    async function getTasasDeCambio(){
        const response = await fetch(`${entityEndpoint}`);
        const data = await response.json();     

        return data;
    }

    function efectuarCompra(metodoPago,metodoPagoCampos){

        const valoresCampos = [];
        const inputs = metodoPagoCampos.querySelectorAll('input, select');
        inputs.forEach(input => {
            valoresCampos.push({ name: input.name, value: input.value });
        });

        let selectedTasaDeCambio = selectTasaDeCambio.value;
        if(selectedTasaDeCambio == 0)
            selectedTasaDeCambio = 1;

        fetch(`${entityEndpoint}`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                cod: metodoPago,
                valores: valoresCampos,
                montoTotal: montoTotalSpan.textContent,
                codTasaDeCambio: selectedTasaDeCambio,
                modelo: entityId,
                codCliente: clienteId
            })
        })    
        .then(response => response.json())
        .then(data => {
            alert('Pago efectuado exitosamente');
            window.location.reload();
        })
        .catch((error) => {
            console.error('Error:', error);
        });

    }
    
})