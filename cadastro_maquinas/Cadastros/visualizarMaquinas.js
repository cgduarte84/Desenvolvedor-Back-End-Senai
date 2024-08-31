// importar as bibliotecas readline-sync e filesystem

const readline = require("readline-sync");
const fs = require("fs");

// declarar a constante que irá exibir os itens da lista
const controller = {
    
    objMaquinas: async (caminho)=>{
        try {

            const conteudo = fs.readFileSync(caminho,'utf-8');

            const maquinas = JSON.parse(conteudo); // parse -> JSON em Objeto | stringify -> Objeto em JSON

            return maquinas;

        } catch (err) {
            console.error('Erro ao processar as máquinas:',err);
        }
    },

    apresentarMaquinas: async (objMaquinas) => { // O parâmetro objTarefas é o objeto que contém as tarefas
        const maquinas = await objMaquinas;

        let qtd = maquinas.length;

        if(qtd >= 1){
            let status = '';

            for(i=0; i<=qtd - 1; i++){
                status = maquinas[i].status === 0 ? 'Inativo' : 'Ativo';

                console.log(`\n${i+1}- ${maquinas[i].modelo} | ANO: ${maquinas[i].ano} | CONTRATO: ${maquinas[i].contrato} | STATUS EM CLIENTE: ${status}`);
            }
        }else{

            console.log('Não há máquinas cadastradas!');

        }

    }

}

module.exports = controller;