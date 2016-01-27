var decode = require("./lib/decode.js").decode;
var sayHello = require("./lib/sayHello.js"); //Only one value returned


var words = ["Mouse", "Tiger", "Class", "Summer", "Miami"];
var result = decode(words);
console.log(result);

sayHello();