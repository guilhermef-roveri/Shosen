var express = require("express");
var router = express.Router();

var treinoController = require("../controllers/treinoController");

router.post("/cadastrar", function (req, res) {
    treinoController.cadastrar(req, res);
})

router.post("/listar", function (req, res) {
    treinoController.autenticar(req, res);
});

module.exports = router;
