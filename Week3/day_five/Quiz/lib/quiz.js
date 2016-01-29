var read = require('read');
var Quiz = function(questionsArray) {
	this.questionsArray = questionsArray;
	this.i = 0;
	this.currentQuestion = questionsArray[this.i];
	this.totalPoints = 0;
	this.negPoints = this.currentQuestion.negPoints;
	this.posPoints = this.currentQuestion.posPoints;
	var randomnumber = Math.floor(Math.random()*11);
	this.bonusQuestion = this.questionsArray[randomnumber - 1];
}

Quiz.prototype.print= function() {
	console.log(this.currentQuestion.question);
}

Quiz.prototype.questionManager= function() {
	
	if (this.i < this.questionsArray.length) {
		var askQuestion = {prompt: `Question ${this.i+1}: ${this.currentQuestion.question}`};
		read(askQuestion, this.checkAnswer.bind(this));
	}
	else {
		console.log("You now know all the capitals!");
		console.log("CONGRATS!!!!!!!");
		console.log(`Total Points: ${this.totalPoints}`)
	};
};

Quiz.prototype.checkAnswer= function(error, userAnswer) {
	if (error) {
		console.log(error.message);
	}
	else if(userAnswer === this.currentQuestion.answer) {
		this.i++;
		if (this.bonusQuestion === this.currentQuestion) {
			this.totalPoints += (this.posPoints *2);
			this.currentQuestion = this.questionsArray[this.i]
			console.log("You got the Bonus Question right! Double the points!");
			console.log("-----------------------------")
			this.questionManager();
		}
		else{
			this.totalPoints += this.posPoints;
			this.currentQuestion = this.questionsArray[this.i]
			console.log("That's right!");
			console.log("-----------------------------")
			this.questionManager();
		}
	}
	else {
		if (this.bonusQuestion === this.currentQuestion) {
			this.totalPoints -= (this.negPoints*2);
			console.log("You got the Bonus Question Wrong :(");
			this.questionManager();
		}
		else{
			this.totalPoints -= this.negPoints;
			console.log("You're wrong! Try again.");
			this.questionManager();
			
		}
	};
};



module.exports = Quiz;