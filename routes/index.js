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
const detalle_consejo = require('./detalle_consejo');
const detalle_promocion = require('./detalle_promocion');
const detalle_proveedor = require('./detalle_proveedor');
const detalle_servicio = require('./detalle_servicio');
const dia_laborable = require('./dia_laborable');
const empleado = require('./empleado');
const empleado_asignado = require('./empleado_asignado');
const especialidad = require('./especialidad');
const estado = require('./estado');
const funcion = require('./funcion');
const garantia = require('./garantia');
const imagen = require('./imagen');
const negocio = require('./negocio');
const objetivo = require('./objetivo');
const orden_servicio = require('./orden_servicio');
const parametro = require('./parametro');
const perfil = require('./perfil');
const promocion = require('./promocion');
const reclamo = require('./reclamo');
const red_social = require('./red_social');
const respuesta_comentario = require('./respuesta_comentario');
const respuesta_reclamo = require('./respuesta_reclamo');
const respuesta_solicitud = require('./respuesta_solicitud');
const rol = require('./rol');
const rol_funcion = require('./rol_funcion');
const servicio = require('./servicio');
const servicio_solicitado = require('./servicio_solicitado');
const sistema = require('./sistema');
const solicitud = require('./solicitud');
const suscripcion = require('./suscripcion');
const tipo_parametro = require('./tipo_parametro');
const tipo_reclamo = require('./tipo_reclamo');
const tipo_servicio = require('./tipo_servicio');
const titulo_seccion = require('./titulo_seccion');
const usuario = require('./usuario');
const valor_parametro = require('./valor_parametro');


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
	valor_parametro,
	especialidad,
	sistema,
	estado,
	detalle_consejo,
	detalle_promocion,
	detalle_proveedor,
	detalle_servicio,
	dia_laborable,
	empleado_asignado,
	solicitud,
	orden_servicio,
	servicio_solicitado,
	garantia,
	respuesta_solicitud,
	reclamo,
	tipo_reclamo,
	respuesta_comentario,
	respuesta_reclamo,
);

//---- Rutas Privadas ------
// app.use('/',auth,

// );

//----Exportar Rutas------ 
module.exports = app