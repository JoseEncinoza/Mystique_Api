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
const horario = require('./horario');
const horario_empleado = require('./horario_empleado');
const imagen = require('./imagen');
const incidencia_orden = require('./incidencia_orden');
const incidencia_servicio = require('./incidencia_servicio');
const insumo = require('./insumo');
const insumo_asociado = require('./insumo_asociado');
const insumo_usado = require('./insumo_usado');
const negocio = require('./negocio');
const notificacion = require('./notificacion');
const objetivo = require('./objetivo');
const orden_servicio = require('./orden_servicio');
const parametro = require('./parametro');
const perfil = require('./perfil');
const presupuesto = require('./presupuesto');
const promocion = require('./promocion');
const proveedor = require('./proveedor');
const razon_incidencia = require('./razon_incidencia');
const reclamo = require('./reclamo');
const red_social = require('./red_social');
const respuesta_comentario = require('./respuesta_comentario');
const respuesta_presupuesto = require('./respuesta_presupuesto');
const respuesta_reclamo = require('./respuesta_reclamo');
const respuesta_solicitud = require('./respuesta_solicitud');
const rol = require('./rol');
const rol_funcion = require('./rol_funcion');
const servicio = require('./servicio');
const servicio_parametro = require('./servicio_parametro');
const servicio_solicitado = require('./servicio_solicitado');
const sistema = require('./sistema');
const solicitud = require('./solicitud');
const suscripcion = require('./suscripcion');
const tipo_comentario = require('./tipo_comentario');
const tipo_incidencia = require('./tipo_incidencia');
const tipo_insumo = require('./tipo_insumo');
const tipo_notificacion = require('./tipo_notificacion');
const tipo_parametro = require('./tipo_parametro');
const tipo_reclamo = require('./tipo_reclamo');
const tipo_respuesta_comentario = require('./tipo_respuesta_comentario');
const tipo_respuesta_presupuesto = require('./tipo_respuesta_presupuesto');
const tipo_respuesta_reclamo = require('./tipo_respuesta_reclamo');
const tipo_respuesta_solicitud = require('./tipo_respuesta_solicitud');
const tipo_servicio = require('./tipo_servicio');
const titulo_seccion = require('./titulo_seccion');
const unidad = require('./unidad');
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
	horario,
	horario_empleado,
	incidencia_orden,
	incidencia_servicio,
	insumo,
	insumo_asociado,
	insumo_usado,
	notificacion,
	presupuesto,
	proveedor,
	razon_incidencia,
	respuesta_presupuesto,
	servicio_parametro,
	tipo_comentario,
	tipo_incidencia,
	tipo_insumo,
	tipo_notificacion,
	tipo_respuesta_comentario,
	tipo_respuesta_presupuesto,
	tipo_respuesta_reclamo,
	tipo_respuesta_solicitud,
	unidad,
);

//---- Rutas Privadas ------
// app.use('/',auth,

// );

//----Exportar Rutas------ 
module.exports = app