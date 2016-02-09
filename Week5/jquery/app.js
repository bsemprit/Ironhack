
$(document).ready(function(){

	$(".js-show-characters").on("click", function() {
		fetchCharacters();
	})

	$(".js-add-kylo").on("click", function(event) {
		event.preventDefault();
		publishCharacter();
	})

	var phrases = [
	"I like pie",
	"Potato chips",
	"Juice and music"
	];


	var x = Math.floor((Math.random() * 3) + 0);
	$('.para').text(`${phrases[x]}`);
	console.log(x);

	$('.change').on('click', function(){
		var y = Math.floor((Math.random() * 3) + 0);
		$('.para').text(`${phrases[y]}`);
		console.log(y);
	})

	// $('.new_phrase').on('')
});

function publishCharacter() {
	var newCharacter = {
		name: $('.js-name').val(),
		occupation: $('.js-occupation').val(),
		weapon: $('.js-weapon').val()
	}; //Remember to fill this out

	$.ajax({
		type: "POST",

		url:"https://ironhack-characters.herokuapp.com/characters",

		data: newCharacter,

		success: function (response) {
			// console.log(response.id);
			var html = `
			<li>
				<h2> ${newCharacter.name} </h2>
				<p> # ${response.id} </p>
				<p> Occupation: ${newCharacter.occupation} </p>
				<p> Weapon: ${newCharacter.weapon} </p>
			</li>
			`;

			$(".js-characters-list").append(html);

			alert("Emo Kylo Ren added successfully");
		},

		error: function (response) {
			console.log(response);
			alert("Couldn't add Kylo Ren. Too bad!");
		}
	});
}


function fetchCharacters () {
	$.ajax({
		url:"https://ironhack-characters.herokuapp.com/characters",

		success: function (response) {
			console.log("Everthing went ok");

			// $(".js-character-name").text(response[0].name)
			var han = response[0];

			displayCharacters(response);

			console.log(response[0].name);
			console.log(response[0].occupation);
			console.log(response[0].weapon);
		},

		error: function() {
			console.log("There was an error.");
		}
	});
}

function displayCharacters (characters) {

		characters.forEach(function(character) {
			var html = `
			<li>
				<h2>${character.name} </h2>
				<p> # ${character.id} </p>
				<p> Occupation: ${character.occupation} </p>
				<p> Weapon: ${character.weapon} </p>
			</li>
		`

		$(".js-characters-list").append(html);
	});
}
