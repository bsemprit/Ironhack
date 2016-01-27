var exampleArray = [2, -5, 10, 5, 4, -10, 0];

// function process(array) {
// 	var newArray = [];

// 	for (var i = 0; i < array.length; i++) {
// 		if (array[i] + array[i] === 0) {
// 			newArray.push(array[i], array[i]);
// 		}

// 		for (var b = i + 1; b < array.length - 1; b++){
// 			if (array[i] + array[b] === 0) {
// 				newArray.push(array[i], array[b]);
// 				}
// 		};
		
// 	};
// 	return newArray;
// }

superArray = [];

function process(data){
	exampleArray.forEach(function(value, index) {
		exampleArray.forEach(function(value2, j) {
			if (value + value2 === 0) {
				superArray.push(value + "," + value2)
			}
		})
		delete exampleArray[index];
	});
	return superArray;
}



var results = process(exampleArray);

console.log(results);


