// importar as bibliotecas readline-sync e filesystem

const readline = require("readline-sync");
const fs = require("fs");

// delcarar a constante que irá adicionar o item à lista
const adicionarMaquina = async (caminho, listaDeMaquinas) =>{

    let maquinas = await listaDeMaquinas;

    let qtdMaquinas = maquinas.length + 1;

    let novaMaquina = {
        id: qtdMaquinas,
        modelo: readline.question('\nQual o modelo da máquina:'),
        ano: readline.question('Qual o ano de fabricação da máquina:'),
        contrato: readline.question('Qual o tipo de contrato da máquina:'),
        status: 0 // 0 define se o equipamento está ativo (em cliente)
    }

    maquinas.push(novaMaquina);

    const maquinaJSON = JSON.stringify(maquinas);

    try{
        fs.writeFileSync(caminho, maquinaJSON);
        console.log('Máquina adicionada com sucesso!');
    }catch(err){
        console.error("Erro ao adicionar a máquina:",err);
    }    

}

module.exports = adicionarMaquina;