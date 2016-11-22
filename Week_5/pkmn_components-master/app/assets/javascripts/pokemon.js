$(document).on("ready", function (){

	$(".js-show-pokemon").on("click",function(){
		var pokemonUri = $(this).data("pokemon-uri");

		var pokemon = new PokemonApp.Pokemon(pokemonUri);
		pokemon.render();

	});
});


PokemonApp.Pokemon = class {
	constructor (pokemonUri) {
		this.apiUrl = pokemonUri;
	}

		render (){
			console.log(`Rendering pokemon with URL: ${this.apiUrl}`);

	$.ajax({
		type: "GET",
		url: `/${this.apiUrl}`,
		success: PokemonApp.showPokemonModal,
		error: PokemonApp.handleError
	});
}
};

PokemonApp.showPokemonModal= function (apiResult){
	console.log("Pokemon API success!");
	console.log(apiResult);

	$(".js-pkmn-name").text(apiResult.name);
	$(".js-pkmn-number").text(`#${apiResult.pkdx_id}`);
	$(".js-pkmn-height").text(apiResult.height);
	$(".js-pkmn-weight").text(apiResult.weight);
	$(".js-pkmn-speed").text(apiResult.speed);
	$(".js-pkmn-hp").text(apiResult.hp);
	$(".js-pkmn-attack").text(apiResult.attack);
	$(".js-pkmn-defense").text(apiResult.defense);
	$(".js-pkmn-sp_atk").text(apiResult.sp_atk);
	$(".js-pkmn-sp_def").text(apiResult.sp_def);
	typeFinder(apiResult.types);
	$(".js-pkmn-types").text(x);


	$(".js-pokemon-modal").modal("show");
};

function typeFinder(typeThing){
	x = []
	typeThing.forEach(function(type){
			x.push(type.name); 
});

	
PokemonApp.handleError = function (errorThang){
		console.log("API Error");
		console.log(errorThang.responseText)
}1;

	