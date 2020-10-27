<cfoutput>
	#includePartial("/layout/admin/htm_head")#

<body id="page-top" class="#get("moca").pageLocation#">
<!--[if lt IE 8]>
    <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->
<div id="wrapper">
	#includePartial("/layout/admin/sidenavigation")#

	<div id="content-wrapper" class="d-flex flex-column">
    	<div id="content">
		#includePartial("/layout/admin/navigation")#
	    	
	    	<div class="p-3">
		    	#flashMessages()#
	    		#includeContent()#
	    	</div>
	    </div><!---Content End--->
		#includePartial("/layout/admin/footer")#
</div>
	#includePartial("/layout/admin/htm_footer")#
</cfoutput>
