var countCountriesFn = require("./lib/count-countries.js");




var countries = [
"Puerto Rico", "Puerto Rico",  
"USA","USA","USA","USA","USA",
"Nicaragua", "France",
"Cuba", "Cuba","Cuba", "Cuba",
"Nigeria", "Haiti"
]

console.log(countCountriesFn("USA", countries) === 5);
console.log(countCountriesFn("Puerto Rico", countries) === 2);
console.log(countCountriesFn("Cuba", countries) === 4);
console.log(countCountriesFn("France", countries) === 1); 
console.log(countCountriesFn("Japan", countries) === 0);





console.log("");
console.log("Countries represented in this room");
console.log("-------------------");
var countries =["Puerto Rico", "USA", "Nicaragua", "France"]

// console.log(countries);
countries.forEach(function (aCountry){
	console.log(`some of us are from ${aCountry}!!`);
});




console.log("");
console.log("Countries represented in this room (UPPERCASE)");
console.log("-------------------");
var uppercaseCountries = countries.map(function (aCountry) {
	return aCountry.toUpperCase();
});

uppercaseCountries.forEach(function(aCountry){
	console.log(`SOME OF US ARE FROM ${uppercaseCountries}!!`);
});
