//----dependencias------  
'use strict'

const cliente_comentarios = require('../models/cliente_comentarios');

function findDocuments (req,res){
  
  cliente_comentarios.forge().fetchAll({ withRelated: ['comentarios']})
  .then(function(data){
    res.status(200).json({ error : false, data : data.toJSON() });
  })
  .catch(function (err) {
    res.status(500).json({ error: true, data: {message: err.message} });
  });

}


function findOneDocument (req,res) {

  let conditions = { id: req.params.id };

  cliente_comentarios.forge(conditions).fetch({ withRelated: ['comentarios'] })
    .then(function(data){
      if(!data) return res.status(404).json({ error : true, data : { message : 'cliente no existe' } });

      res.status(200).json({ error : false, data : data.toJSON() })

    })
    .catch(function(err){
      res.status(500).json({ error : false, data : {message : err.message} })
    })

}

module.exports={
findDocuments,
findOneDocument
}
