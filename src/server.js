const express = require('express')
const app = express()
 const PORT = process.env.PORT|| 3000
const routes = require('./routes')
require('./database')
const swaggerUI = require('swagger-ui-express')
const swaggerFile = require('./swagger.json')

app.use(express.json())
app.use(routes)
app.use('/api/v1/docs', swaggerUI.serve, swaggerUI.setup(swaggerFile))

app.listen(PORT, () => console.log(`1 - Executando na porta ${PORT}`)) 
