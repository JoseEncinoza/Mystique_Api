//----dependencias------  
'use strict'
const bcrypt = require("bcryptjs");
const Vista_solicitud_presupuesto = require('../models/vista_solicitud_presupuesto');

exports.findDocuments = (req,res) => {
  
  Vista_solicitud_presupuesto.forge().fetchAll()
  .then(function(data){
    res.status(200).json({ error : false, data : data.toJSON() });
  })
  .catch(function (err) {
    res.status(500).json({ error: true, data: {message: err.message} });
  });

}

exports.findOneDocument = (req,res) => {

  let conditions = { id: req.params.id };

  Vista_solicitud_presupuesto.forge(conditions).fetch()
    .then(function(data){
      if(!data) return res.status(404).json({ error : true, data : { message : 'vista_solicitud_presupuesto no existe' } });

      res.status(200).json({ error : false, data : data.toJSON() })

    })
    .catch(function(err){
      res.status(500).json({ error : false, data : {message : err.message} })
    })

}