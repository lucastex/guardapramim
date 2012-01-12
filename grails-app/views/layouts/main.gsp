<!DOCTYPE html>
<html lang="en">
	<head>
		
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"></meta>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"></meta>
		
		<title><g:layoutTitle default="Guarda Pra Mim"/></title>
		<g:layoutHead/>
		
		<r:use modules="jquery, guardapramim" />
        <r:layoutResources />
		
		<link href='http://fonts.googleapis.com/css?family=Sofia' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Flamenco' rel='stylesheet' type='text/css'>

	</head>
	<body>
		<div id="fb-root"></div>
		<script>(function(d, s, id) {
		  var js, fjs = d.getElementsByTagName(s)[0];
		  if (d.getElementById(id)) return;
		  js = d.createElement(s); js.id = id;
		  js.src = "//connect.facebook.net/pt_BR/all.js#xfbml=1";
		  fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));</script>
		<g:layoutBody/>
        <r:layoutResources />
	</body>
</html>