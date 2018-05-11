//---- dependencias ------
const Bookshelf = require('../db');
const V_comentarios = require('./v_comentarios');

const cliente_comentarios = Bookshelf.Model.extend({
	tableName: 'cliente',
	comentarios: function() {
		return this.hasMany(V_comentarios, 'id_cliente');	
	}
});

module.exports = cliente_comentarios;