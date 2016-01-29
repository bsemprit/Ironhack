var read = require('read');
var Quiz = function(questionsArray) {
	this.questionsArray = questionsArray;
	this.i = 0;
	this.currentQuestion = questionsArray[this.i]

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
	};
};

Quiz.prototype.checkAnswer= function(error, userAnswer) {
	if (error) {
		console.log(error.message);
	}
	else if(userAnswer === this.currentQuestion.answer) {
		this.i++;
		this.currentQuestion = this.questionsArray[this.i]
		console.log("That's right!");
		console.log("-----------------------------")
		this.questionManager();
	}
	else {
		console.log("You're wrong! Try again.");
		this.questionManager();
	};
};



module.exports = Quiz;