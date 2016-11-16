console.log("APP JS READY")

$(document).ready(function(){
	console.log("hello")
	 $(".js-spotify-form").on("submit", search);

});

function search (eventThing){
eventThing.preventDefault();
console.log("HI")

	var userInput = $(".searcher").val();
	$.ajax({
		type:"GET",
		url: `https://api.spotify.com/v1/search?type=artist&query=${userInput}`,
		success: render,
		error: handleError,
		});
}


function render(InfoFromApi){
	console.log("hi")
	console.log(InfoFromApi.artists.items)

	$(".js-artist-list").empty();

	InfoFromApi.artists.items.forEach(function (oneArtist){
		if (oneArtist.images.length != 0){
		var artistItem =`
	<li> 
		<h3> ${oneArtist.name} </h3>
		<img src="${oneArtist.images[0].url}">
	</li>`;
}

	  $(".js-artist-list").append(artistItem);
	});

}



 function handleError (errorThing){
	console.log("spotify error");
	console.log(errorThing.responseText);

}