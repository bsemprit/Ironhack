var exampleArray = [2, -5, 10, 5, 4, -10, 0];

function process(array) {
	var newArray = [];

	for (var i = 0; i < array.length; i++) {
		if (array[i] + array[i] === 0) {
			newArray.push(array[i], array[i]);
		}

		for (var b = i + 1; b < array.length - 1; b++){
			if (array[i] + array[b] === 0) {
				newArray.push(array[i], array[b]);
				}
		};
		
	};
	return newArray;
}


function process2(otherArray) {
	var positions = [];
}

var results = process(exampleArray);

console.log(results);


