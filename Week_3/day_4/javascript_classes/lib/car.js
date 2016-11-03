"use strict";

class Car {
	constructor (model, noise){
		this.model = model ;
		this.noise = noise;
	}
	make() {
		console.log(`I am a ${this.model} vehicle`);
	}
	sound() {
		console.log(`I go ${this.noise}`);
	}
	wheels() {
		console.log("I have 4 wheels.")
	}
}


module.exports = Car; 