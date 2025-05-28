var quizModel = require("../models/quizModel");

function listar(req, res) {
    quizModel.listar().then(function(resultado){
        res.status(200).json(resultado);
    }).catch(function(erro){
        res.status(500).json(erro.sqlMessage);
    })
}

function cadastrar(req, res) {
    var acertos = req.body.acertos;
    var idUsuario = req.body.idUsuario;
    if (acertos == undefined || idUsuario == undefined) {
        res.status(400).send("Falha ao enviar os dados");
    }

    quizModel.cadastrar(acertos, idUsuario).then(function(resposta){
        res.status(200).send("Acertos enviados com sucesso");
    }).catch(function(erro){
        res.status(500).json(erro.sqlMessage);
    })
}

function acertosUsuario(req,res){
    var idUsuario = req.params.idUsuario;

    quizModel   .acertosUsuario(idUsuario).then(function (resposta){
        res.status(200).json(resposta);
    }).catch(function (erro){
        res.status(500).json(erro.sqlMessage);
    })
}

function mediaAcertosUsuarios(req,res){
    var idUsuario = req.params.idUsuario;

    quizModel.mediaAcertosUsuarios(idUsuario).then(function (resposta){
        res.status(200).json(resposta);
    }).catch(function (erro){
        res.status(500).json(erro.sqlMessage);
    })
}

module.exports = {
    listar,
    cadastrar,
    acertosUsuario,
    mediaAcertosUsuarios
}