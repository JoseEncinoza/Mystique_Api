//----dependencias------  
'use strict'

const cliente_reclamos = require('../models/cliente_reclamos');

function findDocuments (req,res){
  
  cliente_reclamos.forge().fetchAll({ withRelated: ['reclamos']})
  .then(function(data){
    res.status(200).json({ error : false, data : data.toJSON() });
  })
  .catch(function (err) {
    res.status(500).json({ error: true, data: {message: err.message} });
  });

}


function findOneDocument (req,res) {

  let conditions = { id: req.params.id };

  cliente_reclamos.forge(conditions).fetch({ withRelated: ['reclamos'] })
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
