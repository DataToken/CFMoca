component extends="app.controllers.Controller" {

	function config() {
		super.config(restrictAccess=true);
		usesLayout("/admin/dashboard/dashboard");
		verifies(params="userkey", paramsTypes="integer", handler="objectNotFound");
		verifies(params="permissionid", paramsTypes="integer", only="create");
	}

	/**
	* View all user permissions for a user
	**/
	function index() {
		user=model("user").findByKey(key=params.userkey, include="role");
		allpermissions=model("permission").findAll();
		rolePermissions=getRolePermissions(user.roleid);
		userPermissions=getUserPermissions(user.id);
		permissions=mergePermissions(
			getRolePermissions(user.roleid),
			getUserPermissions(user.id)
		);
	}

	/**
	* Create userpermission
	**/
	function create() {
		userpermission=model("userpermission").create(
			userid = params.userkey,
			permissionid = params.permissionid
		);
		if(userpermission.hasErrors()){
			renderView(action="index", userKey=params.userKey, error="User Permission could not be saved");
		} else {
			redirectTo(route="userPermissions", userKey=params.userKey, success="User Permission added");
		}
	}

	/**
	* Remove User Permission
	**/
	function delete() {
		// Would be nice if we could do delete(params.userkey, params.key), but that will just try and delete two seperate
		// values, and not delete via composite key
		if(model("userpermission").deleteOne(where="userid = #params.userkey# AND permissionid = #params.key#")){
			redirectTo(route="userPermissions", userKey=params.userKey, success="User Permission Removed");
		} else {
			redirectTo(route="userPermissions", userKey=params.userKey, error="Couldn't remove User Permission");
		}
	}

	/**
	* Redirect away if verifies fails, or if an object can't be found
	**/
	private function objectNotFound() {
		redirectTo(action="index", error="That User Permission wasn't found");
	}

}
