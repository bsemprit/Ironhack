function decode(words) {
    var secretMessage= "";
    var index = 0;
    for(var i =0; i < words.length; i++) {
        secretMessage += words[i].charAt(index);
        index = (index + 1) % 5;
    }
    return secretMessage;
};

module.exports.decode = decode;