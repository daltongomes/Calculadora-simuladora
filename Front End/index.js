// Declarando as variáveis
let valorInicial = 0;
let valorMensal = 0;
let taxaJuros = 0;
let qtdMeses = 0;
let resultado = 0;

function getValueElement(id) {
    var elemento = document.getElementById(id);
    return elemento.value;
}
// Função para pegar os dados do html
function getDados(){
       valorInicial = getValueElement("valor-inicial");
       valorMensal = getValueElement("valor-mensal");
       taxaJuros = getValueElement("taxa-juros");
       qtdMeses = getValueElement("periodo");

       resultado
}


// Função
function calcular() {
    getDados();
    let soma = parseFloat(valorInicial) + parseFloat(valorMensal);
    let subtrair = parseFloat(valorInicial) - parseFloat(valorMensal);
    let dividir = parseFloat(valorInicial) / parseFloat(valorMensal);
    let multiplicar = parseFloat(valorInicial) * parseFloat(valorMensal);
    alert(multiplicar)
}