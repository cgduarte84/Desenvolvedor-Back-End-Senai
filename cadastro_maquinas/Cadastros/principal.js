// importar as bibliotecas readline-sync e filesystem
const readline = require("readline-sync");
const fs = require("fs");

// declarar a constante para o caminho o arquivo
const caminhoDoArquivo = './cadastroDeMaquinas.json';

// declarar as constantes que irão requisitar as funções de adicionar, visualizar, atualizar e excluir
const adicionarMaquina = require('./adicionarMaquina.js');
const visualizarMaquinas = require('./visualizarMaquinas.js');
const atualizarMaquina = require('./atualizarStatusMaquina.js');
const excluirMaquina = require('./excluirMaquina.js');

// declarar a constante que irá verificar se um arquivo existe, caso exista irá sobrescrevê-lo, caso não exista irá criá-lo.
const criarArquivoSeNaoExiste = async (caminho) => {
    if (!fs.existsSync(caminho)) { //Conferir se o arquivo existe
        try {
            fs.writeFileSync(caminho, "[]")
        } catch (err) {
            console.error("Erro ao criar o arquivo:", err);
        }
    }
}

// declarar a constante que irá apresentar o menu com as opções de adicionar, visualizar, atualizar e excluir.
const exibirMenuDeMaquinas = async () => {
    console.log("--------------------------------");
    const opcao = readline.questionInt(" 1- Adicionar máquina;\n 2- Visualizar máquinas;\n 3- Atualizar status da máquina;\n 4- Excluir máquina;\n 5- Sair\n\n Escolha uma opção:");
    console.log("--------------------------------");

    switch (opcao) {
        case 1:
            await adicionarMaquina(caminhoDoArquivo,visualizarMaquinas.objMaquinas(caminhoDoArquivo));
            break;
        case 2:
            await visualizarMaquinas.apresentarMaquinas(visualizarMaquinas.objMaquinas(caminhoDoArquivo));
            break;
        case 3:
            await atualizarMaquina(caminhoDoArquivo);
            break;
        case 4:
            await excluirMaquina(caminhoDoArquivo);
            break;
        case 5:
            return false;
            break;
        default:
            console.log("Opção inválida!");
    }
    return true;
};

// declarar a constante que irá executar o menu principal
const executarMenuPrincipal = async ()=>{
    let continuar = true;
    while(continuar){
        continuar = await exibirMenuDeMaquinas();
    }
}

// declara a constante principal
const main = async () =>{
    await criarArquivoSeNaoExiste(caminhoDoArquivo);
    await executarMenuPrincipal();
}

main();









