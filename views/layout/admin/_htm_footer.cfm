<cfoutput >
	#includePartial("/layout/inc/scrollTop")#
<!---
  Javascript
  Include jQuery and Bootstrap JS, moment js & daterangepicker from CDN
  Yes, I could technically put these all in a javascriptIncludeTag, but I think this is slightly more readable
  Also include custom.js from /javascripts/
--->
<script type="text/javascript" src="/javascripts/jquery/jquery.min.js"></script>
<script type="text/javascript" src="/javascripts/bs4/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="/javascripts/jquery-easing/jquery.easing.min.js"></script>
<script type="text/javascript" src="/javascripts/jconfirm.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<script type="text/javascript" src="/javascripts/sb-admin-2.min.js"></script>
<script type="text/javascript" src="/javascripts/chart.js/Chart.min.js"></script>
#javascriptIncludeTag("custom")#

<!---
  Additional JS Set in view files
  Sometimes for development it's a load easier to just have a cfsavecontent block of javascript in the same file as
  the form/page you're dealing with. As JS is loaded *after* the template, we're delaying it's execution to after
  jQuery etc is loaded. See /views/admin/auditlogs/_filter.cfm as an example of using this.
--->
<cfif structKeyExists(request, "js")>
    <cfloop collection="#request.js#" item="i">
        <cfoutput>
            #request.js[i]#
        </cfoutput>
    </cfloop>
</cfif>

<cfif application.wheels.environment EQ "development">
	#styleSheetLinkTag(sources="silent.dev", head=true)#
	<script>
		$(function(){
			$('div##wheels-debug-area').addClass('noDisplay');		
		});

	</script>
</cfif>

</body>
</html>
</cfoutput>