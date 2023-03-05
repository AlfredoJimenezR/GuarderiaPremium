document.getElementById('Cuenta').innerHTML = 'Redirigiendo en <span id="countDown">5</span> segundos...';
var Cuenta = 5;
setInterval(function(){
        Cuenta--;
        document.getElementById('countDown').innerHTML = Cuenta;
        if (Cuenta === 0) {
            window.location = 'LogIn.jsp'; 
        }
},1000);
