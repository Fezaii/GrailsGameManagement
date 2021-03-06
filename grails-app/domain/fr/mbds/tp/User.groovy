package fr.mbds.tp

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString
import grails.compiler.GrailsCompileStatic
import org.springframework.web.multipart.MultipartFile


import java.awt.Image

@GrailsCompileStatic
@EqualsAndHashCode(includes='username')
@ToString(includes='username', includeNames=true, includePackage=false)
class User implements Serializable {

    private static final long serialVersionUID = 1

    String username
    String password
    String profileImageName
    boolean enabled = true
    boolean accountExpired
    boolean accountLocked
    boolean passwordExpired

    Set<Role> getAuthorities() {
        (UserRole.findAllByUser(this) as List<UserRole>)*.role as Set<Role>
    }
    static  hasMany = [
            matchWon:Match,
            matchLost:Match,
            messageSent: Message,
            messageReceived : Message
    ]

    static  mappedBy = [
            matchWon: "winner",
            matchLost: "looser",
            messageSent: "author",
            messageReceived: "target"]

    static constraints = {
        password nullable: false, blank: false, password: true
        username nullable: false, blank: false, unique: true
        profileImageName nullable: true, blank: false, unique: true
    }

    static mapping = {
	    password column: '`password`'
    }
}
