<cfdirectory action="list" filter="*html" directory="#ExpandPath('/javascripts/summernote/plugin/pageTemplates/bootstrap-templates')#" name="filename">
<ul>
<cfoutput>
	<cfloop query="filename">
		<li><a href="#name#">#name#</a></li>
	</cfloop>
</cfoutput>
</ul>
