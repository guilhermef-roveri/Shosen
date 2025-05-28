var express = require("express");
var router = express.Router();

var quizController = require("../controllers/quizController");

router.post("/cadastrar", function (req, res) {
    // função a ser chamada quando acessar os dados do quiz
    quizController.cadastrar(req, res);
});

router.get("/listar", function (req, res) {
    quizController.listar(req, res);
});

router.get("/acertosUsuario/:idUsuario", function(req,res){
quizController.acertosUsuario(req,res);
});

router.get("/mediaAcertosUsuarios/:idUsuario", function(req,res){
quizController.mediaAcertosUsuarios(req,res);
});

module.exports = router;