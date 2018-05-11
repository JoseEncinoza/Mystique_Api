const Bookshelf = require('../db');
const V_perfil = require('./v_perfil');

const cliente_perfil = Bookshelf.Model.extend({
	tableName: 'cliente',
	perfil: function() {
		return this.hasMany(V_perfil, 'id_cliente');	
	}
});

module.exports = cliente_perfil;