if (process.env.NODE_ENV !== 'production') {
  require('dotenv').config()
}

const express = require('express')
const app = express()
const PORT = process.env.PORT || 3000

require('./database/models')

app.listen(PORT, () => console.log(`The app is listening ${PORT}`))
