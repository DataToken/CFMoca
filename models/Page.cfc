component extends="Model"  {
	
	function config() {
		super.config(logChanges=true);
		// Associations
		belongsTo("role");
		hasMany("userpermissions");
		/*  */				
		// Properties
		validatesPresenceOf("name, pagestatus,createdat");
		validatesUniquenessOf("name");
		// Page Name Checks
		validate("pageNameValidation");		
		// Callbacks
		beforeValidation("sanitize");
	}
	
	/**
	 * Page Name Validation
	 */
	function pageNameValidation() {
		if( !structKeyExists(this, "name"))
			this.addError(property="name", message="Page Name Already In Use");		
	}


	/**
	* Sanitizes the page object
	*/
	function sanitize() {
		if(structKeyExists(this, "name"))
			this.name = sanitizeInput(this.name);
		if(structKeyExists(this, "metaAuthor"))
			this.metaAuthor = sanitizeInput(this.metaAuthor);
		if(structKeyExists(this, "metaKeywords"))
			this.metaKeywords = sanitizeInput(this.metaKeywords);
		if(structKeyExists(this, "metaDescription"))
			this.metaDescription = sanitizeInput(this.metaDescription);
		if(structKeyExists(this, "excerpt"))
			this.excerpt = sanitizeInput(this.excerpt);
		if(structKeyExists(this, "content"))
			this.content = sanitizeInput(this.content);			
	}
	
}