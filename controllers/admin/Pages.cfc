component extends="app.controllers.Controller" {

	function config() {
		super.config(restrictAccess=true);
		usesLayout("/admin/dashboard/dashboard");
		verifies(except="index,new,create", params="key", paramsTypes="integer", handler="objectNotFound");
	}


	function index(){
		 param name="params.q" default="";
		 param name="param.name" default="";
		 param name="params.roleid" default=0;
		 param name="params.page" type="numeric" default=1;
		 param name="params.perpage" type="numeric" default=2;
		 param name="params.pagestatus" default="active";
	 

		 local.where=[];
		 local.includeSoftDeletes=false;	
		 
		 
		 if(params.roleid > 0){
			arrayAppend(local.where, "roleid = #params.roleid#");
		 }
		 
		 
		 
		 if(len(params.q)){
			local.qWhere=[];
			var sanitizedQ=stripTags(params.q);

			if(len(params.q) GT 50){
				params.q = "";
			} else {
				arrayAppend(local.qWhere, "name LIKE '%#mpage.q#%'");
				arrayAppend(local.qWhere, "pagestatus LIKE '%#mpage.q#%'");
				arrayAppend(local.qWhere, "createdat LIKE '%#mpage.q#%'");
				arrayAppend(local.where, whereify(local.qWhere, "OR"));
			}
		}
		mpage=model("page").findAll(where=whereify(local.where));
	
	}	

	/**
	* New Page
	**/	
	function new(){
		mpage=model("page").new();
	}

	/**
	* View Page
	**/
	function show() {
		mpage=model("page").findByKey(params.key);
		if(!isObject(mpage)){
			objectNotFound();
		}
	}

	/**
	* Create New Page
	**/	
	function create(){
		mpage=model("page").new();
		
		mpage.q = params.q;
		mpage.name = params.name;
		mpage.headerImage = params.headerImage;
		mpage.metaAuthor = params.metaAuthor ;
		mpage.metaKeywords = params.metaKeywords;
		mpage.metaDescription = params.metaDescription;
		mpage.excerpt = params.excerpt;
		mpage.content = params.content;
		mpage.pageStatus = params.pageStatus;
		
		//Activate page on submission
		//mpage.pagestatus = 1;
		
		//save condition
		if(mpage.save()){
			addlogline(type="page",  message="page #mpage.name# created");
			redirectTo(route="pages", success="Page #mpage.name# created");
		} else{
			renderView(action="new");
		}
	}
	
	/**
	* Edit Page
	**/
	function edit() {
		mpage=model("page").findByKey(params.key);
		if(!isObject(mpage)){
			objectNotFound();
		}
	}
	
	/**
	* Update Page
	**/
	function update() {
	
		mpage=model("page").findByKey(params.key);
		
		mpage.page = params.mpage.name;
		mpage.headerImage = params.mpage.headerImage;
		mpage.metaAuthor = params.mpage.metaAuthor ;
		mpage.metaKeywords = params.mpage.metaKeywords;
		mpage.metaDescription = params.mpage.metaDescription;
		mpage.excerpt = params.mpage.excerpt;
		mpage.content = params.mpage.content;
			
		//update
		if(mpage.update(params.mpage)){
			addlogline(type="page",  message="page #mpage.name# updated");
			redirectTo(action="index", success="Page successfully updated");
		} else {
			renderView(action="edit");
		}
	}

	/**
	* Redirect away if verifies fails, or if an object can't be found
	**/
	private function objectNotFound() {
		redirectTo(action="index", error="That Page wasn't found");
	}
}