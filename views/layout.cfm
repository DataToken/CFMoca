<cfoutput>
	#includePartial("/layout/htm/htm_head")#
<body class="#get("moca").pageLocation#">
<!--[if lt IE 8]>
    <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->


<div id="content" class="container">
  <div class="pt-5">
    #flashMessages()#
  	<section class="pt-2">
  	    #includeContent()#
  	</section>
  </div>
</div>

#includePartial("/layout/footer")#

#includePartial("/layout/htm/htm_footer")#
</cfoutput>
