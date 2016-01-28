// function blastoff (num) {
// 	for(var i = num; i >= -1; i--) {

// 		if (i == 5) {
// 			setTimeout(function(){console.log(5)}, 1000);
// 		}
// 		else if (i ==4) {
// 			setTimeout(function(){console.log(4)}, 2000);
// 		}
// 		else if (i ==3) {
// 			setTimeout(function(){console.log(3)}, 3000);
// 		}
// 		else if (i ==2) {
// 			setTimeout(function(){console.log(2)}, 4000);
// 		}
// 		else if (i ==1) {
// 			setTimeout(function(){console.log(1)}, 5000);
// 		}
// 		else if (i ==0) {
// 			setTimeout(function(){console.log(0)}, 6000);
// 		}
// 		else {
// 			setTimeout(function(){console.log("blastoff")}, 7000);
// 		}
// 	}

// };

// blastoff(5);

function blastoff (seconds) {
	function countdown() {
		console.log(seconds);

		if (seconds>0) {
			seconds-= 1;
			setTimeout(countdown, 1000);
		}
		else {
			console.log("blastoff");
		}
	}
	countdown();
};

blastoff(5);