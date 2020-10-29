<!--- Page Edit Form --->
<cfparam name="mpage">
<cfoutput>
#pageHeader(title="Edit Page", btn=linkTo(route="pages", text="<i class='fa fa-chevron-left'></i> Cancel", class="btn btn-info btn-xs", encode="attributes"))#

#errorMessagesFor("mpage")#
#startFormTag(id="pageEditForm", route="Page", method="patch", key=params.key)#
	
	#textField	(objectName	="mpage", property	="name",			label="Page Name")#
	#textField	(objectName	="mpage", property	="headerimage", 	label="Page Banner Image")#
	#textField	(objectName	="mpage", property	="metaauthor", 		label="Author")#
	#textField	(objectName	="mpage", property	="metakeywords",	label="Keywords")#
	#textField	(objectName	="mpage", property	="metadescription", label="Description")#
	#textField	(objectName	="mpage", property	="excerpt", 		label="excerpt")#
	#textarea	(objectName	="mpage", property	="content", 		label="Page Content", class="summernote")#
	
	#submitTag(value="Update Page", class="mt-4 btn btn-success")#
#endFormTag()#
</cfoutput>
