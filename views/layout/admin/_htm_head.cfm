<cfoutput>
<!DOCTYPE html>
<html lang="en">
  <head>
  	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <cfoutput>#csrfMetaTags()#</cfoutput>
    <title>#e(getSetting('general_sitename'))# | #get("moca").pageTitle#</title>
    <meta name="description" content="" />
    <meta name="author" content="" />
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <link rel="stylesheet" type="text/css" href="/stylesheets/bs4/bootstrap.min.css" />
    <!---<link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" />--->
    <link rel="stylesheet" type="text/css" href="/stylesheets/fontawesome-free/css/all.css" />
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
    <link rel="stylesheet" type="text/css" href="/stylesheets/jquery-confirm.min.css" />
    <link rel="stylesheet" type="text/css" href="/stylesheets/sb-admin-2.min.css" />    
    #stylesheetLinkTag("custom")#
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
	  <link rel="shortcut icon" href="/favicon.ico">
</head>
</cfoutput>