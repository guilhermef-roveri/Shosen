var treinoModel = require("../models/treinoModel")

function listar(req, res) {
    treinoModel.listar().then(function (resultado) {
        // precisamos informar que o resultado voltará para o front-end como uma resposta em json
        res.status(200).json(resultado);
    }).catch(function (erro) {
        res.status(500).json(erro.sqlMessage);
    })
}

function cadastrar(req, res) {
    var horasTreino = req.body.horasTreinoServer;
    var idUsuario = req.body.idUsuario;

    if (horasTreino == undefined) {
        res.status(400).send("Seu treino está inserido errado!");
    }

    treinoModel.cadastrar(horasTreino, idUsuario).then(function (resposta) {
        res.status(200).send("Treino criado com sucesso");
    }).catch(function (erro) {

        if (erro.errno === 1062) {
            res.status(409).send("Você já informou uma quantidade de treino para hoje");
            return
        }console.log(
                        "\nHouve um erro ao enviar seu tempo de treino! Erro: ",
                        erro.sqlMessage
                    );
        res.status(500).json(erro.sqlMessage);
    })
}

function horasTotais(req, res) {
    var idUsuario = req.params.idUsuario;
    // Usar o POST no meu html
    treinoModel.horasTotais(idUsuario).then(function (resposta) {
        res.status(200).json(resposta);
    }).catch(function (erro) {
        res.status(500).json(erro.sqlMessage);
    });
}

function mediaUsuario(req, res) {
    var idUsuario = req.params.idUsuario;

    treinoModel.mediaTreino(idUsuario).then(function (resposta) {
        res.status(200).json(resposta);
    }).catch(function (erro) {
        res.status(500).json(erro.sqlMessage);
    })
}

function mediaGeral(req, res) {
    var idUsuario = req.params.idUsuario;

    treinoModel.mediaGeral(idUsuario).then(function (resposta) {
        res.status(200).json(resposta);
    }).catch(function (erro) {
        res.status(500).json(erro.sqlMessage);
    })
}

function horaGrafico(req, res) {
    var idUsuario = req.params.idUsuario;
    treinoModel.horaGrafico(idUsuario).then(function (resposta) {
        res.status(200).json(resposta);
    }).catch(function (erro) {
        res.status(500).json(erro.sqlMessage);
    })
}

function graficoComparacaoMedias(req, res) {
    var idUsuario = req.params.idUsuario;
    treinoModel.graficoComparacaoMedias(idUsuario).then(function (resposta) {
        res.status(200).json(resposta);
    }).catch(function (erro) {
        res.status(500).json(erro.sqlMessage);
    })
}

module.exports = {
    listar,
    cadastrar,
    horasTotais,
    mediaUsuario,
    mediaGeral,
    horaGrafico,
    graficoComparacaoMedias
}
