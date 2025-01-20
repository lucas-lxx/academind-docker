const express = require('express');

const app = express();

app.get('/', (req, res) => {
  console.log("requested basic Node page");
  res.send(`
    <h1>Hello from inside the, actual latest, very basic Node app!</h1>
  `);
})

app.listen(3000);
