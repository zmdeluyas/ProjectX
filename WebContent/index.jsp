<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		
		<title>IMSv2</title>
		
		<!-- jQuery -->
		<script type="text/javascript" src="js/jquery-3.2.1.min.js" ></script>
		<script type="text/javascript" src="js/login.js" ></script>
		
		<!-- CSS-->
 		<!-- <link rel="stylesheet" media="(min-width: 1000px)" href="css/min-width-1000px.css"> -->
		<link rel="stylesheet" href="css/style.css">
		<link rel="stylesheet" href="css/login.css">
		
	</head>
	
	<body>
		<div class = "container-bordered" style = "width: 270px;margin: auto; margin-top:10%;">
				
				<div class = "input-group">
					<label for = "user">Username</label>
					<input type = "text" id = "user">
				</div>
				
				<div class = "input-group">
					<label for = "pword">Password</label>
					<input type = "password" id = "pword">
				</div>
				
				<button class = "btn-full-width input-group" id = "btnLogin">Login</button>
				
				<div class = "input-group" style = "display:inline-block; width: 100%;">
					<div style = "float:left;">
						<input type = "checkbox" id = "showPass"><label for = "showPass"> Show Password</label>
					</div>
					<p style = "float:right;"><a href = "#" id = "forgotPass">Forgot Password?</a></p>
				</div>
				
				<div class = "alert-field">
					<p class = "alert-field-msg">Wrong Password!</p>
				</div>
				
				<div id = "cont"></div>
			</div>
			
			
	<script type="text/javascript">
				
		$(document).ready(function(){
					
					
			$('#btnLogin').click(function(){
				$('#btnLogin').html('<div class = "loader-btn" style = "margin:auto;" id = "loader"></div>');
				$('#btnLogin').attr("disabled", "true");
						
				var context = "${pageContext.request.contextPath}";
							
				$.ajax({ 
					url: context + "/LoginController",
					type: "POST",
					data: { action 	: "login", 
							str 	: "string" },
					timeout: 3000,
					success: function(response){
						$('body').html(response);
					},
					error: function(xhr, status, error){
						$('#btnLogin').html('Login');
						$('#btnLogin').removeAttr("disabled");
					}
				});
							
			});
					
			$('#showPass').change(function(){
				this.checked ? ($('#pword').attr("type", "text")) : ($('#pword').attr("type", "password"));
			});
					
		});
				
	</script>	
	
	</body>
	
	
	
</html>