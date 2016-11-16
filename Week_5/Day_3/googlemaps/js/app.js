console.log("APP JS ONLOINE");

$(document).ready(function(){

console.log(" The page has finished loading");
	promptForLocation();
});


	function promptForLocation(){
	  if("geolocation" in navigator) {
	  		var optionsThing = {
	  		enableHighAccuracy: true,
	  		timeout: 5000 
	  		};
navigator.geolocation.getCurrentPosition(showPositionInDom, showError);
		}

	else{
			var errorHtml =`
			<div class="alert alert-danger" role="alert">
				<strong> Sorry </strong>
				Your browser is too oldd to use this site please upgrade to Chrome.
			</div>`;

$("body").prepend(errorHtml) 
  		}
	}			

  function showPositionInDom(locationInfo) {
  	console.log("Got position succesfully.");
  	console.log(locationInfo);

  	$(".js-lat").html(locationInfo.coords.latitude);
  	$(".js-lng").html(locationInfo.coords.longitude);

  	$(".hi").attr("src",`https://maps.googleapis.com/maps/api/staticmap?zoom=12&size=200x300&center=${locationInfo.coords.latitude},${locationInfo.coords.longitude}`);
  };

  function showError(errorInfo){
  	console.log("Error getting postion");
  	console.log(errorInfo);
 };


    



