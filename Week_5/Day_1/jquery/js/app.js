console.log("CONSOLE LOG");

$(document).ready(function (){

$(".js-fade-button").on("click",function(){
	$(".fader").fadeOut();

});

$(".unicorn-mode").on("click", changeButtonColor);

	function changeButtonColor () {
  $("button").addClass("btn");

  if ( $("button").hasClass("btn-success") ) {
    $("button").removeClass("btn-success");
    $("button").addClass("btn-info");
  }

  else if ( $("button").hasClass("btn-info") ) {
    $("button").removeClass("btn-info");
    $("button").addClass("btn-warning");
  }

  else if ( $("button").hasClass("btn-warning") ) {
    $("button").removeClass("btn-warning");
  }

  else {
    $("button").addClass("btn-success");
  }
}




$(".js-pizza").on("click", function () {
	$(".js-small").append("PIZZA 🍕 PIZZA ");
});

$(".empanadas").on("click", function () {
	$(".js-heading").append(`
		<span> EMPANADA TIME ☺️ </span>
		<a href = "#">SEE MORE EMPANADAS </A>
		`);
	$("p").remove();
});

$("#cookies").on("click", cookieMessage); 


// $("body").empty();


function cookieMessage(){

	var cookieContent = `
	<div>
		<h2> "Have some cookies. 🍪" </h2>

		<p> Cookies are good for you. Here is why: </p>

		<ul>
			<li> Cookies taste good.</li>
			<li> they have 0 calories. </li>
			<li> Cookies don't lie to you. </li>
		</ul>
	</div>`;

$("body").after(cookieContent)
}


});

// $(".js-button-thing").on("click", function () {
// 		$("body").append(`<img src=images/giphy(1).gif">`);
// });

