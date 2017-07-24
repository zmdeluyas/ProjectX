function login(){
	new Ajax.Request(
			context + "/LoginController",
			{
				method : "post",
				parameters : {
					action : "login",
				},
				onComplete : function(response) {
					alert("success");
				}
			});
}