component extends="app.controllers.Controller" {

	function config() {
		super.config(restrictAccess=true);
		usesLayout("/admin/dashboard/dashboard");
		
	}

	function index(){
		
	}
}