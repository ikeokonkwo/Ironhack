function count_countries (country, array) {
counter = 0

array.forEach (function (eachCountry) {
	if (eachCountry == country ){
		counter +=1
	}
});
return counter;
}

module.exports = countCountries