//----dependencias------  
'use strict'
const bcrypt = require("bcryptjs");
const Vista_detalle_proveedor = require('../models/vista_detalle_proveedor');

exports.findDocuments = (req,res) => {
  
  Vista_detalle_proveedor.forge().fetchAll()
  .then(function(data){
    res.status(200).json({ error : false, data : data.toJSON() });
  })
  .catch(function (err) {
    res.status(500).json({ error: true, data: {message: err.message} });
  });

}

exports.findOneDocument = (req,res) => {

  let conditions = { id: req.params.id };

  Vista_detalle_proveedor.forge(conditions).fetch()
    .then(function(data){
      if(!data) return res.status(404).json({ error : true, data : { message : 'vista_detalle_proveedor no existe' } });

      res.status(200).json({ error : false, data : data.toJSON() })

    })
    .catch(function(err){
      res.status(500).json({ error : false, data : {message : err.message} })
    })

}