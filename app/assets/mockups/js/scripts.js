$(document).ready(function() {

  	// Handler for .ready() called.
	$("#login-form").hide();
	$("#signup-form").hide();
	
	$("#login").click(function() {
		//$("#signup").show();
		$("#signup").fadeIn();
		$("#login").hide();
		//$("#login-form").show();
		$("#login-form").fadeIn();
		$("#signup-form").hide();
	});

	$("#signup").click(function() {
		//$("#login").show();
		$("#login").fadeIn();
		$("#signup").hide();
		//$("#signup-form").show();
		$("#signup-form").fadeIn();
		$("#login-form").hide();
	});
	

});

