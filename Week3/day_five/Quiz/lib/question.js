var Questions = function (id, question, answer, posPoints, negPoints) {
	this.posPoints = posPoints;
	this.negPoints = negPoints;
	this.id = id;
	this.question = question;
	this.answer = answer;
}

module.exports = Questions;