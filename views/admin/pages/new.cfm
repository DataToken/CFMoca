<cfparam name="mpage" >
<!---New Page--->
<cfoutput>
#pageHeader(title="Create New Page",  btn=linkTo(route="pages", text="<i class='fa fa-chevron-left'></i> Cancel", class="btn btn-info btn-xs", encode="attributes"))#
#errorMessagesFor("mpage")#
#startFormTag(route="pages", method="POST")#
	#hiddenFieldTag	(objectName	="mpage", property	="q",	name="q", value="0")#
	#textFieldTag	(objectName	="mpage", property	="name",			label="Page Name", 			name="name")#
	#textFieldTag	(objectName	="mpage", property	="headerimage", 	label="Page Banner Image",	name="headerimage")#
	#textFieldTag	(objectName	="mpage", property	="metaauthor", 		label="Author", 			name="metaauthor")#
	#textFieldTag	(objectName	="mpage", property	="metakeywords",	label="Keywords", 			name="metakeywords")#
	#textFieldTag	(objectName	="mpage", property	="metadescription", label="Description", 		name="metadescription")#
	#textFieldTag	(objectName	="mpage", property	="excerpt", 		label="excerpt", 			name="excerpt")#
	#textareaTag	(objectName	="mpage", property	="content", 		label="content", 			name="content")#
	#hiddenFieldTag	(objectName	="mpage", property	="pageStatus",	name="pageStatus", value="0")#
	
	#submitTag(value="Create Page", class="mt-4 btn btn-outline-primary")#
#endFormTag()#
</cfoutput>