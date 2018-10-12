package fr.mbds.tp

class BootStrap {

    def init = { servletContext ->

       // def user1 = new User(username: 'player 1', password: "abccbcbbcbc", profileImageName: "cat.jpg").save(flush:true, failOnError:true)
       // def user2 = new User(username: 'player 2', password: "ahmed", profileImageName: "macac.jpg").save(flush:true, failOnError:true)
        def adminRole = Role.findByAuthority('ROLE_ADMIN') ?: new Role('ROLE_ADMIN').save(flush: true, failOnError: true);

        //def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush:true, failOnError: true)
        def gamingRole = new Role(authority: 'ROLE_USER').save(flush: true, failOnError: true)

        def adminUser = new User(username: 'admin', password: 'password', profileImageName: "cat.jpg").save(flush:true, failOnError: true)
        def playerUser = new User(username: 'player', password: 'password',profileImageName: "macac.jpg").save(flush:true, failOnError: true)

        UserRole.create(adminUser,adminRole,true)
        UserRole.create(playerUser, gamingRole, true)

        new Match(winner: adminUser, looser: playerUser, winnerScore: 10, looserScore: 1).save(flush:true, failOnError:true)

        new Message(author: adminUser, target: playerUser, content: "nannanana").save(flush:true, failOnError:true)
        new Message(author: playerUser, target: adminUser, content: ":(").save(flush:true, failOnError:true)
    }
    def destroy = {
    }
}
