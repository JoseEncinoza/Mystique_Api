//----dependencias------  
'use strict'
const bcrypt = require("bcryptjs");
const Sistema = require('../models/sistema');

exports.findDocuments = (req,res) => {
  
  Sistema.forge().fetchAll()
  .then(function(data){
    res.status(200).json({ error : false, data : data.toJSON() });
  })
  .catch(function (err) {
    res.status(500).json({ error: true, data: {message: err.message} });
  });

}

exports.createDocument = (req,res) => {

  let newData = {
    imagen:            req.body.imagen,
    estatus:           req.body.estatus,
    nombre:            req.body.nombre,
    fecha_creacion:    req.body.fecha_creacion,
  }

  Sistema.forge(newData).save()
  .then(function(data){
    res.status(200).json({ error: false, data: { message: 'sistema creado' } });
  })
  .catch(function (err) {
    res.status(500).json({ error: true, data: {message: err.message} });
  });

}

exports.findOneDocument = (req,res) => {

  let conditions = { id: req.params.id };

  Sistema.forge(conditions).fetch()
    .then(function(data){
      if(!data) return res.status(404).json({ error : true, data : { message : 'sistema no existe' } });

      res.status(200).json({ error : false, data : data.toJSON() })

    })
    .catch(function(err){
      res.status(500).json({ error : false, data : {message : err.message} })
    })

}

exports.updateDocument = (req,res) => {

  let conditions = { id: req.params.id };

  Sistema.forge(conditions).fetch()
    .then(function(sistema){
      if(!sistema) return res.status(404).json({ error : true, data : { message : 'sistema no existe' } });

      let updateData = {
        imagen:            req.body.imagen,
        estatus:           req.body.estatus,
        nombre:            req.body.nombre,
        fecha_creacion:    req.body.fecha_creacion,
      }
      
      sistema.save(updateData)
        .then(function(data){
          res.status(200).json({ error : false, data : { message : 'sistema actualizado'} });
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

  Sistema.forge(conditions).fetch()
    .then(function(sistema){
      if(!sistema) return res.status(404).json({ error : true, data : { message : 'sistema no existe' } });

      sistema.destroy()
        .then(function(data){
          res.status(200).json({ error : false, data : {message : 'sistema eliminado'} })
        })
        .catch(function(err){
          res.status(500).json({error : true, data : {message : err.message}});
        })

    })
    .catch(function(err){
          res.status(500).json({ error : false, data : {message : err.message} })
    })

}