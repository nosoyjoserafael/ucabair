document.addEventListener('DOMContentLoaded', async function() {

    const entityEndpoint = "https://curly-couscous-9rv5rqjwpx62gxg-3000.app.github.dev/pago";

    //definir valores
    const clienteId = localStorage.getItem('id');
    const entityId = localStorage.getItem('avionId');
    const price = Math.floor(Math.random() * (99999999 - 100000 + 1)) + 100000;

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

    function efectuarCompra(metodoPago,metodoPagoCampos){

        const valoresCampos = [];
        const inputs = metodoPagoCampos.querySelectorAll('input, select');
        inputs.forEach(input => {
            valoresCampos.push({ name: input.name, value: input.value });
        });
        console.log(valoresCampos);
        console.log(`
            codigo de metodo de pago: ${metodoPago},\n
            Campos: ${valoresCampos.values()},\n
            Monto total: ${montoTotalSpan.textContent},\n
            Codigo de tasa de cambio: ${selectMetodoPago.value},\n
            Codigo del avion: aqui va lo que retorna comprar_avion(),\n
            Codigo de cliente: 1,\n
            `
        );

        fetch(`${entityEndpoint}`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                "Codigo de metodo de pago": metodoPago,
                "Campos": valoresCampos,
                "Monto total": montoTotalSpan.textContent,
                "Codigo de tasa de cambio": selectMetodoPago.value,
                "Codigo del avion": entityId,
                "Codigo de cliente": clienteId
            })
        })    
        .then(response => response.json())
        .then(data => {
            alert('Compra realizada con exito');
            window.location.reload();
        })
        .catch((error) => {
            console.error('Error:', error);
        });

    }
    
})