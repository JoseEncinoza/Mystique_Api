const Bookshelf = require('../db');

const Vista_servicio_categoria = Bookshelf.Model.extend({
  tableName: 'vista_servicio_categoria',
});

module.exports = Vista_servicio_categoria