const express = require('express')
const path = require('path')

const app = express()

app.use(express.static(path.resolve(__dirname + '/public')))

app.listen(3000, () => {
    console.log('start server on port 3000')
})