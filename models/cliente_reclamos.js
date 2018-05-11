const Bookshelf = require('../db');
const V_reclamos = require('./vista_reclamos_realizados');

const cliente_reclamos = Bookshelf.Model.extend({
	tableName: 'cliente',
	reclamos: function() {
		return this.hasMany(V_reclamos, 'id_cliente');	
	}
});

module.exports = cliente_reclamos;