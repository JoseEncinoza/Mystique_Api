const express = require('express')

//----dependencias------ 
const router = express.Router()
const controller = require('../controllers/v_perfil')

//----Parametros------
const path = '/v_perfil'
const id = ':id'

//----Rutas------ 
router.get(`${path}`, controller.findPerfiles)
router.get(`${path}/${id}`,controller.findOnePerfil)


module.exports = router;