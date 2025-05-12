var database = require("../database/config")

function cadastrar(horasTreino){
    var instrucao = ` 
    INSERT INTO treino(fkUsuario,dia,tempoTreino) VALUES (1,CURDATE(),'${horasTreino}');
    `;
    console.log("Inserindo o tempo de treino no SQL: \n" + horasTreino);
    return database.executar(instrucao)
}

module.exports = {
    cadastrar
};