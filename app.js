const express = require("express");
const app = express();
const port = 3000;

// serve this folder
app.use(express.static("public"));

app.listen(port, () => {
  console.log(`Example app listening on http://localhost:${port}`);
});
