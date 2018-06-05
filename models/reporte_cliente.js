//---- dependencias ------
const Bookshelf = require('../db');
const Vista_perfil = require('./vista_perfil');

const Reporte_servicio = Bookshelf.Model.extend({
  tableName: 'cliente',
  perfil: function(){
  	return this.hasMany(Vista_perfil,"id_cliente")
  }
});

module.exports = Reporte_servicio;