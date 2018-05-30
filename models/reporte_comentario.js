//---- dependencias ------
const Bookshelf = require('../db');
const Respues_comentario = require('./respuesta_comentario')

const Reporte_comentario = Bookshelf.Model.extend({
  tableName: 'comentario',
  respuesta_comentario: function() {
    return this.hasOne(Respues_comentario, 'id_comentario', 'id');
  }
});

module.exports = Reporte_comentario;

//model.hasOne(Target, [foreignKey], [foreignKeyTarget])