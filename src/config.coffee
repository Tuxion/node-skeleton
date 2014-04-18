module.exports =
  domainName: 'localhost'
  clientPort: 3000
  serverPort: 3001
  httpPort: null
  publicHtml: '../../public'
  database: 'mongodb://localhost/application'
  logLevel: ['debug', 'info', 'error', 'critical'][0]
  whitelist: ['localhost']
  sessionSecret: 'sesamopenu'
