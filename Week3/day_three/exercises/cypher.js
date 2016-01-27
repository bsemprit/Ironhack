var words, message;

words = [
    "dead",         // 1st -> d
    "bygone",       // 2nd -> y
    "landing",      // 3rd -> n
    "cheaply",      // 4th -> a
    "assumed",      // 5th -> m
    "incorrectly",  // 1st -> i
    "attention",    // 2nd -> t
    "agent"         // 3rd -> e
];

var words1 = [
    "January", "lacks", "caveats", "hazardous", "DOORS",
    "crying", "arrogantly", "climate", "proponent", "rebuttal"
];

var words2 = [
    "Issuing", "anecdotal", "reticles", "selecting", "recurring",
    "nodes", "belonging", "externally", "braziers"
];

function decode(words) {
    // var dynamite;
    // dynamite = words[0].charAt(0) + words[1].charAt(1) + words[2].charAt(2) + words[3].charAt(3) + words[4].charAt(4) + words[5].charAt(0) + words[6].charAt(1) + words[7].charAt(2);
    
    // return dynamite;

    var secretMessage= "";
    var index = 0;
    for(var i =0; i < words.length; i++) {
        secretMessage += words[i].charAt(index);
        index = (index + 1) % 5;
    }
    return secretMessage;
};

// message should be "dynamite"
message = decode(words);
console.log(message);

message = decode(words1);
console.log(message);

message = decode(words2);
console.log(message);