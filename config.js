module.exports = {
  basePath: '/',
  port: process.env.PORT || 5000,
  SECRET_TOKEN: 'miclavedetokens',
  db: {
    client: 'pg',
    connection: {
      host     : '127.0.0.1',
      port     : '5432', //5432
      user     : 'postgres',
      password : 'postgres',
      database : 'mystique',
      charset  : 'utf8'
    }
  }
}
