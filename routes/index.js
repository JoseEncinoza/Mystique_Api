//----dependencias------ 
'use strict'
const express = require('express');
const auth = require('../middlewares/auth');

//----routes------

const agenda = require('./agenda');
const auditoria = require('./auditoria');
const bloque = require('./bloque');
const calificacion_orden = require('./calificacion_orden');
const calificacion_servicio = require('./calificacion_servicio');
const categoria_parametro = require('./categoria_parametro');
const categoria_servicio = require('./categoria_servicio');
const ciudad = require('./ciudad');
const cliente = require('./cliente');
const comentario = require('./comentario');
const consejo = require('./consejo');
const contacto_negocio = require('./contacto_negocio');
const criterio = require('./criterio');
const descripcion_negocio = require('./descripcion_negocio');
const empleado = require('./empleado');
const funcion = require('./funcion');
const imagen = require('./imagen');
const negocio = require('./negocio');
const objetivo = require('./objetivo');
const parametro = require('./parametro');
const perfil = require('./perfil');
const promocion =require('./promocion');
const red_social = require('./red_social');
const reclamos_realizados = require('./vista_reclamos_realizados');
const rol = require('./rol');
const rol_funcion = require('./rol_funcion');
const servicio = require('./servicio');
const suscripcion = require('./suscripcion');
const tipo_parametro = require('./tipo_parametro');
const tipo_servicio = require('./tipo_servicio');
const titulo_seccion = require('./titulo_seccion');
const usuario = require('./usuario');
const vista_clientes = require('./vista_cliente');
const vista_servicios_categoria = require('./vista_servicios_categoria');
const vista_solicitudes = require('./vista_solicitudes');


//----app------
const app = express();

//---- Rutas Publicas ------
app.use('/',
	suscripcion,
	//---------
	usuario,
	cliente,
	negocio,
	parametro,
	perfil,
	tipo_parametro,
	categoria_servicio,
	servicio,
	consejo,
	empleado,
	red_social,
	imagen,
	titulo_seccion,
	promocion,
	calificacion_orden,
	calificacion_servicio,
	tipo_servicio,
	rol,
	funcion,
	rol_funcion,
	objetivo,
	contacto_negocio,
	descripcion_negocio,
	agenda,
	auditoria,
	bloque,
	categoria_parametro,
	ciudad,
	comentario,
	criterio,
	vista_clientes,
	reclamos_realizados,
	vista_solicitudes,
	vista_servicios_categoria,
);

//---- Rutas Privadas ------
// app.use('/',auth,

// );

//----Exportar Rutas------ 
module.exports = app