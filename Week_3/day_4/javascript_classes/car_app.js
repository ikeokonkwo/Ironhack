"use strict";
var Car = require("./lib/car.js");

console.log("");

var Uberx = new Car("Escalade","RRRROOOOOM");

	Uberx.make();
	Uberx.sound();
	Uberx.wheels();

console.log("");


var Ubermini = new Car("Honda","beep");

Ubermini.make();
Ubermini.sound();
Ubermini.wheels();