// importar as bibliotecas readline-sync e filesystem
const readline = require("readline-sync");
const fs = require("fs");

// declarar a constante que irá excluir o item da lista
const excluir = async (caminho) => {
    const visualizar = require('./visualizarMaquinas');
    const maquinas = await visualizar.objMaquinas(caminho);

    await visualizar.apresentarMaquinas(maquinas);

    let qtd = maquinas.length;

    if (qtd >=1){
        let opcao = readline.questionInt('\nSelecione uma opção para excluir:');

        while(opcao < 1 || opcao > qtd + 1){
            console.log('OPÇÃO INVÁLIDA!');
            let opcao = readline.questionInt('\nSelecione uma opção para excluir:');            
        }

        maquinas.splice(opcao - 1, 1);

        const maquinaJSON = JSON.stringify(maquinas.filter(Boolean));

        try {
            fs.writeFileSync(caminho, maquinaJSON);
            console.log('Máquina excluída com sucesso!');
        } catch (err) {
            console.error('Erro ao excluir a Máquina!', err);
        }

    }
}

module.exports = excluir;
















