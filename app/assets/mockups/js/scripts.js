$(document).ready(function() {

  	// Handler for .ready() called.
	$("#login-form").hide();
	$("#signup-form").hide();
	
	$("#login").click(function() {
		$("#signup").show();
		$("#login").hide();
		$("#login-form").show();
		$("#signup-form").hide();
	});

	$("#signup").click(function() {
		$("#login").show();
		$("#signup").hide();
		$("#signup-form").show();
		$("#login-form").hide();
	});
	

});

