console.log("APP JS READY")

$(document).ready(function(){

  $(".js-fetch-characters").on("click", fetchCharacters);
  $(".js-ackbar-form").on("submit", saveAckbar);
  $(".js-new-form").on("submit", occupation);

});

function saveAckbar (eventThing){
	eventThing.preventDefault();
	var weaponInput = $(".js-ackbar-weapon").val();
		if (weaponInput === ""){
			weaponInput = "Memes"
		}
		

	var ackbarInfo= {
		name: "Admiral Ackbar",
		occupation:"Rebel Fleet Admiral",
		weapon:weaponInput,
	};

	$.ajax({
		type:"POST",
		url: "https://ironhack-characters.herokuapp.com/characters",
		data: ackbarInfo,
		success: showAckbar,
		error: handleError,
		});
}


	function showAckbar (infoFromApi){
	console.log("Save Ackbar sucess");
	console.log(infoFromApi);
}

// NEW FORM

function occupation (eventThing){
	eventThing.preventDefault();
	var occupationInput = $(".js-new-form").val();
		if (occupationInput === ""){
			occupationInput = "jobless"
		}
		if (nameInput === ""){
			nameInput = "no name"
		}

	var occupationInfo= {
		name: nameInput,
		occupation:occupationInput,
	};

	$.ajax({
		type:"POST",
		url: "https://ironhack-characters.herokuapp.com/characters",
		data: ackbarInfo,
		success: occupation,
		error: handleError,
		});
}


///


function fetchCharacters(){
	$.ajax({
		type:"GET",
		url: "https://ironhack-characters.herokuapp.com/characters",
		success: showCharacters,
		error: handleError,
		});
}

   function showCharacters (x) {
	console.log("Fetch character success");
	console.log(x);


	$(".js-character-list").empty();

	x.forEach(function (oneCharacter){
		var characterItem =`
	<li> 
		<h3> ${oneCharacter.name} </h3>
		<p> ${oneCharacter.weapon} </p>
		<p> ${oneCharacter.occupation}  </p>
		<p>${oneCharacter.debt} </p>
		<p> ${oneCharacter.id} </p> 
	</li>`;


	  $(".js-character-list").append(characterItem);
	});
}

   function handleError (errorThing){
	console.log("Fetch characters error");
	console.log(errorThing.responseText);

}