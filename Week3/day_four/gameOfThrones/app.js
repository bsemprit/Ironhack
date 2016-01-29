var fs = require('fs');
function fileActions(err, file){
    if (err) {
        throw err;
    }
    var episodes = JSON.parse(file);
   function Sort(episodes_array) {
   		var newEpisodes = episodes_array.sort(function(a, b) {

   			return a.episode_number - b.episode_number
   		});
			return newEpisodes

   }



				// var numbers  = [3, 100, 1, 5, 25, 10];
				// var newNumbers = numbers.sort(function(a, b){
  		// 		return a-b
				// 	});
				// 	/newNumbers = [1, 3, 5, 10, 25, 100]




	newEpisodes = Sort(episodes)

console.log(newEpisodes.length)



    	for (var i = 0; i < newEpisodes.length; i++) {

    		console.log(newEpisodes[i].title + " Episode # " + newEpisodes[i].episode_number)
    		console.log(newEpisodes[i].description)

    		function Rating(episode_rating) {
    			var star =  "";
    			for(var j = 1; j < episode_rating; j++) {
    				star= star + "*";
    			}

    			return console.log("Rating: " + episode_rating + " " + star);
    		};

    		Rating(newEpisodes[i].rating);


    	}
}


fs.readFile("./Game_of_Thrones.json", 'utf8', fileActions);

