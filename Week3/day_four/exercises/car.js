var Car = function (model, noise){
	this.model = model,
	this.noise = noise,
	this.numWheels = 4
};

Car.prototype.makeNoise = function() {
	console.log(this.noise);
};

var mini = new Car("mini", "Brmmmm")

mini.makeNoise()