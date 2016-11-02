// this function should return the avg of numbers between my colons

function averageColon (numbers) {
var counter = 0;
var numberStringArray = numbers.split(":");
numberArray = []
numberStringArray.forEach(function(eachStringElement){
	numberArray.push(parseInt(eachStringElement))

});


numberArray.forEach (function (eachNumber) {
		counter += eachNumber  ;
		average = counter/numberStringArray.length ;
	
});
return average;
}

module.exports = averageColon;