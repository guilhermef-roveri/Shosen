var database = require("../database/config")

function cadastrar(horasTreino, idUsuario){
    var instrucao = ` 
    INSERT INTO treino(fkUsuario,dia,tempoTreino) VALUES ('${idUsuario}',CURDATE(),'${horasTreino}');
    `;
    console.log("Inserindo o tempo de treino no SQL: \n" + horasTreino);
    return database.executar(instrucao)
}

function mediaTreino(idUsuario){
    var instrucao = `
     SELECT round(AVG(tempoTreino)) as MediaTreinoUsuario FROM treino 
    INNER JOIN usuario on idUsuario = fkUsuario WHERE idUsuario = '${idUsuario}';`;
    return database.executar(instrucao)
}

function mediaGeral(){
    var instrucao = `
SELECT round(AVG(tempoTreino)) as MediaTreinoGeral FROM treino
INNER JOIN usuario on idUsuario = fkUsuario`

return database.executar(instrucao)
}

function horasTotais(idUsuario){
    var instrucao = `
    SELECT SUM(tempoTreino) as TempoTreinado FROM treino
    INNER JOIN usuario on idUsuario = fkUsuario WHERE idUsuario = '${idUsuario}';
    `;
    return database.executar(instrucao)
}   


function horaGrafico(idUsuario){
    var instrucao = `SELECT * 
    FROM treino
    INNER JOIN usuario on idUsuario = fkUsuario
    WHERE idUsuario = '${idUsuario}';`

    return database.executar(instrucao)
}

module.exports = {
    cadastrar,
    horasTotais,
    mediaTreino,
    mediaGeral,
    horaGrafico
}