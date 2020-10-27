<cfoutput>
<cfif !isAuthenticated()>
	#pageHeader(title="CF MOCA")#
	<p class="lead">Built with CFWheels</p>
	<p>#linkTo(route="login", text="Login?")#</p>
<cfelseif isAuthenticated()>
	#usesLayout("/admin/dashboard/dashboard")#
</cfif>
</cfoutput>
