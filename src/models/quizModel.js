var database = require("../database/config")

function cadastrar(acertos, idUsuario) {
    var instrucao = `
    INSERT INTO acertosQuiz (fkUsuario,acertos,dia) VALUES('${idUsuario}','${acertos}',CURDATE());
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}


function acertosUsuario(idUsuario) {
    var instrucao = `
    SELECT acertos as acertosUsuario FROM acertosQuiz INNER JOIN usuario on idUsuario = fkUsuario WHERE idUsuario = '${idUsuario}';`

    console.log("Executando a instrucao SQL : \n" + instrucao);
    return database.executar(instrucao);
}

function mediaAcertosUsuarios(idUsuario) {
    var instrucao = `
SELECT ROUND(AVG(ACERTOS)) as mediaAcertosUsuarios FROM acertosQuiz INNER JOIN usuario on idUsuario = fkUsuario WHERE idUsuario != '${idUsuario}';`

    console.log("Executando a instrucao SQL : \n" + instrucao);
    return database.executar(instrucao);
}

module.exports = {
    cadastrar,
    acertosUsuario,
    mediaAcertosUsuarios
};