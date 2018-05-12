const Bookshelf = require('../db');

const Vista_comentario = Bookshelf.Model.extend({
  tableName: 'vista_comentario',
});

module.exports = Vista_comentario