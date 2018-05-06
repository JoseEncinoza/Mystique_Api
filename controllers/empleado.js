//----dependencias------  
'use strict'
const bcrypt = require("bcryptjs");
const Empleado = require('../models/empleado');

exports.findDocuments = (req,res) => {
  
  Empleado.forge().fetchAll()
  .then(function(data){
    res.status(200).json({ error : false, data : data.toJSON() });
  })
  .catch(function (err) {
    res.status(500).json({ error: true, data: {message: err.message} });
  });

}

exports.createDocument = (req,res) => {

  let newData = {
    nombre:           req.body.nombre,
    apellido:         req.body.apellido,
    cedula:           req.body.cedula,
    telefono:         req.body.telefono,
    direccion:        req.body.direccion,
    fecha_nacimiento: req.body.fecha_nacimiento,
    fecha_creacion:   req.body.fecha_creacion,
    estatus:          req.body.estatus,
    id_ciudad:        req.body.id_ciudad,
    id_usuario:       req.body.id_usuario,
    imagen:           req.body.imagen,
  }

  Empleado.forge(newData).save()
  .then(function(data){
    res.status(200).json({ error: false, data: { message: 'empleado creado' } });
  })
  .catch(function (err) {
    res.status(500).json({ error: true, data: {message: err.message} });
  });

}

exports.findOneDocument = (req,res) => {

  let conditions = { id: req.params.id };

  Empleado.forge(conditions).fetch()
    .then(function(data){
      if(!data) return res.status(404).json({ error : true, data : { message : 'empleado no existe' } });

      res.status(200).json({ error : false, data : data.toJSON() })

    })
    .catch(function(err){
      res.status(500).json({ error : false, data : {message : err.message} })
    })

}

exports.updateDocument = (req,res) => {

  let conditions = { id: req.params.id };

  Empleado.forge(conditions).fetch()
    .then(function(empleado){
      if(!empleado) return res.status(404).json({ error : true, data : { message : 'empleado no existe' } });

      let updateData = {
        nombre:           req.body.nombre,
        apellido:         req.body.apellido,
        cedula:           req.body.cedula,
        telefono:         req.body.telefono,
        direccion:        req.body.direccion,
        fecha_nacimiento: req.body.fecha_nacimiento,
        fecha_creacion:   req.body.fecha_creacion,
        estatus:          req.body.estatus,
        id_ciudad:        req.body.id_ciudad,
        id_usuario:       req.body.id_usuario,
        imagen:           req.body.imagen,
      }
      
      empleado.save(updateData)
        .then(function(data){
          res.status(200).json({ error : false, data : { message : 'empleado actualizado'} });
        })
        .catch(function(err){
          res.status(500).json({ error : false, data : {message : err.message} });
        })

    })
    .catch(function(err){
          res.status(500).json({ error : false, data : {message : err.message} })
    })

}

exports.deleteDocument = (req,res) => {

  let conditions = { id: req.params.id };

  Empleado.forge(conditions).fetch()
    .then(function(empleado){
      if(!empleado) return res.status(404).json({ error : true, data : { message : 'empleado no existe' } });

      empleado.destroy()
        .then(function(data){
          res.status(200).json({ error : false, data : {message : 'empleado eliminado'} })
        })
        .catch(function(err){
          res.status(500).json({error : true, data : {message : err.message}});
        })

    })
    .catch(function(err){
          res.status(500).json({ error : false, data : {message : err.message} })
    })

}