// importar as bibliotecas readline-sync e filesystem
const readline = require("readline-sync");
const fs = require("fs");

// declarar a constante que irá editar / atualizar o status de um item da lista
const atualizar = async (caminho) => {
    const visualizar = require('./visualizarMaquinas');
    const maquinas = await visualizar.objMaquinas(caminho);

    await visualizar.apresentarMaquinas(maquinas);

    let qtd = maquinas.length;

    if (qtd >=1){
        let opcao = readline.questionInt('\nSelecione uma opção para atualizar o status:');

        while(opcao < 1 || opcao > qtd + 1){
            console.log('OPÇÃO INVÁLIDA!');
            let opcao = readline.questionInt('\nSelecione uma opção para atualizar o status:');            
        }

        maquinas[opcao - 1].status = maquinas[opcao - 1].status === 0 ? 1 : 0;

        const maquinaJSON = JSON.stringify(maquinas);

        try {
            fs.writeFileSync(caminho, maquinaJSON);
            console.log('Máquina atualizada com sucesso!');
        } catch (err) {
            console.error('Erro ao atualizar a Máquina!', err);
        }

    }
}

module.exports = atualizar;

