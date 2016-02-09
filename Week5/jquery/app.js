var phrases = [
"I like pie",
"Potato chips",
"Juice and music"
];

$(document).ready(function(){
	var x = Math.floor((Math.random() * 3) + 0);
	$('.para').text(`${phrases[x]}`);
	console.log(x);

	$('.change').on('click', function(){
		var y = Math.floor((Math.random() * 3) + 0);
		$('.para').text(`${phrases[y]}`);
		console.log(y);
	})

	$('.new_phrase').on('')
});

