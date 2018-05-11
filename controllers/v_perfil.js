'use strict' //de uso estricto para el servidor
const v_perfil = require('../models/v_perfil');

//next para encadenar a otra funcion
function findPerfiles (req,res, next) {
  
  v_perfil.forge().fetchAll()
  .then(function(data){
  	 if(!data) return res.status(404).json({ error : true, data : { message : 'no hay datos...' } });
    res.status(200).json({ error : false, data : data });
  })
  .catch(function (err) {
    res.status(500).json({ error: true, data: {message: err.message} });
  });

}

function findOnePerfil (req,res) {

  let conditions = { id_cliente: req.params.id };

  v_perfil.forge(conditions).fetchAll()
    .then(function(data){
      if(!data) return res.status(404).json({ error : true, data : { message : 'no hay datos...' } });

      res.status(200).json({ error : false, data : data.toJSON() })

    })
    .catch(function(err){
      res.status(500).json({ error : false, data : {message : err.message} })
    })

}

module.exports= { 
   findPerfiles,
   findOnePerfil  
}