const Bookshelf = require('../db');

const v_perfil = Bookshelf.Model.extend({
  tableName: 'v_perfil',
});

module.exports = v_perfil