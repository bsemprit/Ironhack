var read = require('read');

var User = function (exUserName, totalPoints, questionPosition) {
	// body...
	this.exUserName = exUserName;
	this.totalPoints = totalPoints;
	this.questionPosition = questionPosition;
};

User.prototype.userManager = function () {	
		var askQuestion = {prompt: "Are you a new user?"};
		read(askQuestion, this.checkIfUser.bind(this));
};

User.prototype.checkIfUser = function(error, yesOrNo) {
	var yesOrNolow = yesOrNo.toLowerCase();
	if (error) {
		console.log(error.message);
	}
	else if (yesOrNolow === "yes") {
		this.promptMakeUser();
	}
	else if (yesOrNolow === "no") {
		this.promptUser();
	}
	else {
		console.log("Please enter yes or no.");
		this.userManager();
	};
};

User.prototype.promptUser = function() {
	var askUserName = {prompt: "Please enter your user name:"};
		read(askUserName, this.checkUser.bind(this));
};

User.prototype.checkUser = function(error, userName) {
	if (error) {
		console.log(error.message);
	}
	else if (userName === this.exUserName) {
		console.log(`Welcome back! ${this.exUserName}`);
	}
	else {
		console.log("That user name doesn't exist.");
		this.userManager();
	};
};


User.prototype.promptMakeUser = function() {
	var askNewUserName = {prompt: "Please enter your new user name:"};
		read(askNewUserName, this.makeUser.bind(this));
};

User.prototype.makeUser = function(error, newUserName) {
	if (error) {
		console.log(error.message);
	}
	else if (newUserName === this.exUserName) {
		console.log("That user already exists.");
		this.promptMakeUser();
	}
	else {
		this.exUserName = newUserName;
		this.totalPoints = 0;
		this.questionPosition = 1;
		console.log(`Welcome to the game ${newUserName}`);
	}
};

// User.prototype.StartGame = function() {

// }

module.exports = User;