package mvc

import grails.transaction.Transactional
import grails.web.context.ServletContextHolder
import org.springframework.web.multipart.MultipartFile

// EXTERNAL: This code is from here https://de.slideshare.net/cavneb/upload-files-with-grails (GitHub: https://github.com/coderberry/FileUploader)
// EXTERNAL: No major changes from my side were being made

@Transactional
class FileUploadService {

    String uploadFile(MultipartFile file, String name, String destinationDirectory) {

        def servletContext = ServletContextHolder.servletContext
        def storagePath = servletContext.getRealPath(destinationDirectory)

        def storagePathDirectory = new File(storagePath)
        if (!storagePathDirectory.exists()) {
            print "CREATING DIRECTORY ${storagePath}: "
            if (storagePathDirectory.mkdirs()) {
                println "SUCCESS"
            } else {
                println "FAILED"
            }
        }

        if (!file.isEmpty()) {
            file.transferTo(new File("${storagePath}/${name}"))
            return "${storagePath}/${name}"
        } else {
            println "File ${file.inspect()} was empty!"
            return null
        }
    }
}

// EXTERNAL: Ends here
