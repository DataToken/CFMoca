<cfoutput >
	#includePartial("/layout/inc/scrollTop")#
<!---
  Javascript
  Include moment js & daterangepicker from CDN
  Technically you could put these all in a javascriptIncludeTag, but I think this is slightly more readable
  Also, the #JAVASCRIPTINCLUDETAG()# adds the custom.js file from the "/javascripts/" directory
--->
<script type="text/javascript" src="/javascripts/jquery/jquery.min.js"></script>
<script type="text/javascript" src="/javascripts/bs4/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="/javascripts/jquery-easing/jquery.easing.min.js"></script>
<script type="text/javascript" src="/javascripts/jconfirm.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<script type="text/javascript" src="/javascripts/sb-admin-2.min.js"></script>
<script type="text/javascript" src="/javascripts/chart.js/Chart.min.js"></script>
#includePartial(partial="/admin/assets/js")#


<cfif application.wheels.environment EQ "development"> 
	#styleSheetLinkTag(sources="silent.dev", head=true)# 
	#javascriptIncludeTag("dev")# 
</cfif>

<!---
  Additional JS Set in view files
  Sometimes for development it's easier to just have a "CFSAVECONTENT" block of javascript in the same file as
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

</body>
</html>
</cfoutput>