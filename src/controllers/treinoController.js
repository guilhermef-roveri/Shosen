var treinoModel = require("../models/treinoModel")

function listar(req, res) {
    treinoModel.listar().then(function(resultado){
        // precisamos informar que o resultado voltará para o front-end como uma resposta em json
        res.status(200).json(resultado);
    }).catch(function(erro){
        res.status(500).json(erro.sqlMessage);
    })
}

function cadastrar(req, res) {
    var horasTreino = req.body.horasTreinoServer;

    if (horasTreino == undefined) {
        res.status(400).send("Seu treino está inserido errado!");
    }

    treinoModel.cadastrar(horasTreino).then(function(resposta){
        res.status(200).send("Treino criado com sucesso");
    }).catch(function(erro){
        res.status(500).json(erro.sqlMessage);
    })
}

module.exports = {
    listar,
    cadastrar
}
