var database = require("../database/config")

function cadastrar(acertos, idUsuario) {
    var instrucao = `
    INSERT INTO acertosQuiz (fkUsuario,acertos,dia) VALUES('${idUsuario}','${acertos}',CURDATE());
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

module.exports = {
    cadastrar,
};