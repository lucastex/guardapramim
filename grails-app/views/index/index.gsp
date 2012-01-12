<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Guarda pra mim?</title>
	</head>
	<body>
		<div id="content">
			
			<div class="left">
				<h1>Guarda pra mim?</h1>
				<h3>Não se preocupe, guardamos seu arquivo até amanhã!</h3>
			</div>
			<div align="right" class="right">
				<div class="fb-like" data-href="http://www.guardapramim.com.br" data-send="false" data-layout="box_count" data-width="80" data-show-faces="false" data-font="lucida grande"></div>
			</div>
			<br style="clear: both;" />
			
			<hr />
			
			<g:if test="${flash.error}">
				<h5 class="error">${flash.error}</h5>
			</g:if>
			<g:else>
				<g:if test="${url}">
					<h4>Pronto, você pode acessar seu arquivo no endereço:</h4>
					<p class="limit">
						(até as ${new Date().format('HH:mm')} de amanhã)
					</p>	
					<p>
						<a href="${url}">${url}</a>
					</p>
				</g:if>
				<g:else>
					<g:uploadForm controller="index" action="upload">
			    		<input type="file" name="file">
			    		<input type="submit" value="enviar">
					</g:uploadForm>
				</g:else>
			</g:else>
					
			<br />
			
			<div class="fb-comments" data-href="http://www.guardapramim.com.br" data-num-posts="50" data-width="550"></div>
			
		</div>
	</body>
</html>
