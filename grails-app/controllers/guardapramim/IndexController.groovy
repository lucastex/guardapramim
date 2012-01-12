import org.codehaus.groovy.runtime.TimeCategory

import org.jets3t.service.S3Service
import org.jets3t.service.impl.rest.httpclient.RestS3Service

import org.jets3t.service.security.AWSCredentials
import org.jets3t.service.security.ProviderCredentials

class IndexController {
	
	def grailsApplication
	
	def index = {
		
	}
	
	def upload = {
		
		def file = request.getFile('file')
		if (file) {
			
			def fileName = file.originalFilename
			def bucketName = "static.guardapramim.com.br"
			def randomPath = UUID.randomUUID().toString()
		
			def uploadedFile = file.inputStream.s3upload(fileName) {
		    	path randomPath
				bucket bucketName
				rrs true
				acl "public"
			}
		
			def originalUrl = "http://${bucketName}/${randomPath}/${fileName}"
			def shortenUrl = new URL("http://tinyurl.com/api-create.php?url=${originalUrl.encodeAsURL()}").text
		
			render view: "index", model: [url: shortenUrl]
		} else {
			flash.error = "Erro ao enviar seu arquivo"
			redirect action: index
		}
	}
}