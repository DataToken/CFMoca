<cfscript>
	// Place code here that should be executed on the "onRequestStart" event.
   /*
      If authenticated, try and force a refresh on any auth'd page to stop browser caching
      of potentially sensitive information
    */
    if(isAuthenticated()){
    	cfheader(name="Cache-Control", value="no-store, must-revalidate");
    }
    
    
   /*
		set body class based on route
   */   
	loc.moca = {};
	loc.moca.pageLocation = ReRePlace(cgi.paTH_INFO,"[^a-z]", " ", "ALL");
	loc.moca.pageTitle	= ReReplace(loc.moca.pageLocation,"\b(\w)(\w+)\b", "\U\1\L\2", "ALL");
	if (loc.moca.pageLocation == ''){
		loc.moca.pageLocation	=	"homepage";
		set(moca=loc.moca);		
	} else{
		set(moca=loc.moca);
	}

	
</cfscript>
