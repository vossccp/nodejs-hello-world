const express = require('express');
const app = express();

app.get('/', function (req, res) {
  console.log("received hello world request");
  res.send('Hello Serom!');
});

app.listen(3000, function () {
  console.log('Listening on port 3000');
});
