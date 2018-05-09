const Bookshelf = require('../db');
const V_Servicio_Solicitado = require('./vista_servicio_solicitado');

const Vista_solicitudes = Bookshelf.Model.extend({
  tableName: 'vista_solicitudes',
  vista_servicio_solicitado: function(){
  	return this.belongsTo(V_Servicio_Solicitado,"id")
  }
});

module.exports = Vista_solicitudes;