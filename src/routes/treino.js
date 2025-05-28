var express = require("express");
var router = express.Router();

var treinoController = require("../controllers/treinoController");

router.post("/cadastrar", function (req, res) {
    treinoController.cadastrar(req, res);
})

router.post("/listar", function (req, res) {
    treinoController.autenticar(req, res);
});

router.get("/horasTotaisUsuario/:idUsuario", function(req, res) {
  treinoController.horasTotais(req, res);
});
// Vou chamar direto as horas totais pelo Usuario

router.get("/mediaUsuario/:idUsuario", function(req,res){
treinoController.mediaUsuario(req,res);
});
// Mesma coisa aqui

router.get("/mediaGeral/:idUsuario", function(req,res){
  treinoController.mediaGeral(req,res);
})

router.get("/horaGrafico/:idUsuario", function(req,res){
treinoController.horaGrafico(req,res);
})

module.exports = router;
