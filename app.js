var express = require("express");
var randomWords = require('random-words');
const memer = require("random-jokes-api");

var app = express();

app.get("/jokes", (req, res, next) => {
    let jokes = memer.joke();

    res.json(jokes);
});


app.get("/generate", (req, res, next) => {
    var rword = randomWords();

    res.json(rword);
});

app.listen(8080, () => {
 console.log("Server running on port 3000");
});

