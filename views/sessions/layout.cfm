<cfoutput>
#includePartial("/layout/htm/htm_head")#
<body class="#get("moca").pageLocation#">
<!--[if lt IE 8]>
    <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->



    <div class="container">
	    #flashMessages()#
  	    #includeContent()#
    </div>

#includePartial("/layout/htm/htm_footer")#
</cfoutput>

