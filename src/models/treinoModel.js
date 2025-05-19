var database = require("../database/config")

function cadastrar(horasTreino, idUsuario){
    var instrucao = ` 
    INSERT INTO treino(fkUsuario,dia,tempoTreino) VALUES ('${idUsuario}',CURDATE(),'${horasTreino}');
    `;
    console.log("Inserindo o tempo de treino no SQL: \n" + horasTreino);
    return database.executar(instrucao)
}

function mediaTreinoUsuario(){
    
}

function mediaTreinoGeral(){

}

function totalTreinado(){

}
module.exports = {
    cadastrar
};