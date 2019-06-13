$(document).ready(function() {
	$("#new_user").validate({
		rules: {
			"user[first_name]": {
				required: true,
				maxlength: 25
			},
			"user[last_name]": {
				required: true,
				maxlength: 25
			},
			"user[email]":{
				required: true,
				email: true
			},
			"user[password]": {
				required: true,
				maxlength: 64
			},
			"user[password_confirmation]": {
				required: true,
				maxlength: 64,
				equalTo: "#user[password]"
			}
		},
		messages: {
			"user[first_name]": {
				required: "Please enter a First Name",
				maxlength: "Your First Name maximum 25 characters long"
			},
			"user[last_name]": {
				required: "Please enter a Last Name",
				maxlength: "Your Last Name maximum 25 characters long"
			},
			"user[email]": {
				required: "Please enter a Email",
				email: "Please enter a valid email address"
			},
			"user[password]": {
				required: "Please provide a Password",
				maxlength: "Your Password maximum 64 characters long"
			},
			"user[password_confirmation]": {
				required: "Please provide a Password Configmation",
				maxlength: "Your Password maximum 64 characters long",
				equalTo: "Please enter the same password as above"
			}
		}
	});
});