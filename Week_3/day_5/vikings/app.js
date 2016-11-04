// I want to do the following...... 
// 1) Welcome User
// 2) Have them create vikings 
// 3) Give them instructions
// 4) Pick vikings for the fight 
// 5) run the Pit Fight 


// PART 1- WELCOMING THE USER 
var read = require('read');
console.log("Welcome to Viking Valhalla!")
console.log("Please create your Viking Warriors!!!:")

class Viking {
	constructor(name, health, strength) {
		this.name = name;
		this.health = health;
		this.strength = strength;
		}};

//VIKING CREATION FUNCTION
var vikings = [];
var counter = 0;
function getVikingInfo(){

	read({prompt:"What is your viking name?"}, function(err, name){
		read({prompt: "What is your viking's health?"}, function (err, health){
			read({prompt: "What is your viking's strength?"}, function (err, strength){
				NewVik = new Viking(name, health, strength);
				vikings.push(NewVik);
				counter += 1
					if (counter < 3)  {
						getVikingInfo();
					}
					else {
						PITFIGHT()
					}
			});
		});
	});


}

getVikingInfo()


function PITFIGHT () {
	console.log("=========================================================")
	console.log("=========================================================")
}
	// //PIT FIGHTS
	// console.log("PIT FIGHT")
	// console.log("")
	// console.log("")
