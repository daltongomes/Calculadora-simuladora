// Declarando as variáveis
let valorInicial = 0;
let valorMensal = 0;
let taxaJuros = 0;
let qtdMeses = 0;
let resultado = 0;
let resultadoTotalInvestido = 0;
let resultadoTotalJuros = 0;

// Função para pegar os dados do html
function getValueElement(id) {
    var elemento = document.getElementById(id);
    return elemento.value;
}
// Pegar os dados 
function getDados(){
       valorInicial = getValueElement("valor-inicial");
       valorMensal = getValueElement("valor-mensal");
       taxaJuros = getValueElement("taxa-juros");
       qtdMeses = getValueElement("periodo");

// M é o valor final da transação, o montante acumulado
// C é o capital investido
// i é a taxa de juros
// t é o tempo em que o capital ficará aplicado ou sob empréstimo
// M= C(1+i)t

// 1 - Colocar no html valor total investido via javascript
// 2 - Calcular somente o valor de juros (valor final - valor investido)
// 3 - Colocar no html valor total em juros via Javascript

 //    resultado = 2500         * Math.pow( (1,12 /100),              36/12 )
       resultado = valorInicial * Math.pow( (1+ taxaJuros/100), qtdMeses/12 );
       resultadoTotalInvestido = parseFloat(valorInicial);
       resultadoTotalJuros = valorInicial * Math.pow( (1+ taxaJuros/100), qtdMeses/12 ) - valorInicial;

       var totalFinalElemento = document.getElementById("total-final");
       totalFinalElemento.innerText = resultado.toLocaleString("pt-br",{style: "currency", currency: "BRL"});
       var totalInvestidoElemento = document.getElementById("total-investido");
       totalInvestidoElemento.innerText = resultadoTotalInvestido.toLocaleString("pt-br",{style: "currency", currency: "BRL"});
       var totalJurosElemento = document.getElementById("total-juros");
       totalJurosElemento.innerText = resultadoTotalJuros.toLocaleString("pt-br",{style: "currency", currency: "BRL"});
       alert(resultado); 
}




// Função
function calcular() {
    getDados();

    // let soma = parseFloat(valorInicial) + parseFloat(valorMensal);
    // let subtrair = parseFloat(valorInicial) - parseFloat(valorMensal);
    // let dividir = parseFloat(valorInicial) / parseFloat(valorMensal);
    // let multiplicar = parseFloat(valorInicial) * parseFloat(valorMensal);
    // alert()
}