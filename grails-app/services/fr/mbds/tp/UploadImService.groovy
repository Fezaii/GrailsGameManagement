package fr.mbds.tp

import grails.config.Config
import grails.core.support.GrailsConfigurationAware
import grails.gorm.services.Service
import groovy.transform.CompileStatic
import org.springframework.web.multipart.MultipartFile

@SuppressWarnings('GrailsStatelessService')
@CompileStatic
class UploadImService implements GrailsConfigurationAware {

    UserService userService

    String cdnFolder
    String cdnRootFolder

    @Override
    void setConfiguration(Config co) {
        cdnFolder = co.getProperty('server.filePath')
        cdnRootFolder = co.getProperty('server.fileUrl')
    }

    @SuppressWarnings('JavaToPackageAccess')
    String uploadProfileImage(MultipartFile file) {

        String filename = UUID.randomUUID().toString()+'.jpg'
        File folder = new File(cdnFolder + '/' + filename)
        folder.createNewFile()
        file.transferTo(new File(cdnFolder + '/' + filename))
        filename
    }

}