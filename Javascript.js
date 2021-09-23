// Definimos la funcion PulsarPrueba para probar la funcion onclick del boton y la funcion alert de javascrpt
function PulsarPrueba() {
    alert('Has pulsado el boton de prueba');
}
// Definimos la funcion Home para probar la funcion onclick del boton
function Home() {
    alert('Como decia Dorothy "No hay nada como el hogar", Xavi Vete a casa.');
}

//Funcion pensada para tirar dos dados randoms y compararlos, dependiendo de lo que salga cambiara el html para declarar el ganador.

function Random() {
    //definimos las dos variables, sacamos un numero entre el 0 y el 500 y lo convertimos en numero entero
    let random = Math.floor(Math.random() * (500 - 0) + 0);
    let random2 = Math.floor(Math.random() * (500 - 0) + 0);
    //printamos estos numeros en la pagina web
    document.getElementById('PrimerJugador').innerHTML = random;
    document.getElementById('SegundoJugador').innerHTML = random2;
    //Cambiamos el contenido del boton
    document.getElementById('Random').innerHTML = "Otra oportunidad";

    //Si el valor es mayor de 200 ponemos un mensaje que hunda en la misera al perdedor.
    if (random < random2) {
        document.getElementById('Resultado').innerHTML = "Gana el Alfonso";
        if (random + 200 < random2) {
            document.getElementById('Resultado').innerHTML = "Alfonso HUMILLA a Xavi";
        }
    } else if (random > random2) {
        document.getElementById('Resultado').innerHTML = "Gana Xavi";
        if (random > random2 + 200) {
            document.getElementById('Resultado').innerHTML = "Xavi DESTROZA a Alfonso";
        }
    } else {
        document.getElementById('Resultado').innerHTML = "NO LO PUEDO CREER \n EMPATEE!!!";
    }
}