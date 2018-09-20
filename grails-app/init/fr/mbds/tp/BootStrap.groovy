package fr.mbds.tp

class BootStrap {

    def init = { servletContext ->

        //def user1 = new User(username: 'player 1', password: "abccbcbbcbc").save(flush:true, failOnError:true)
        //def user2 = new User(username: 'player 2', password: "ahmed").save(flush:true, failOnError:true)
        def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush:true, failOnError: true)
        def gamingRole = new Role(authority: 'ROLE_USER').save(flush: true, failOnError: true)

        def adminUser = new User(username: 'admin', password: 'password', image: "cat.jpg").save(flush:true, failOnError: true)
        def playerUser = new User(username: 'player', password: 'password',image: "kaka").save(flush:true, failOnError: true)

        UserRole.create(adminUser,adminRole,true)
        UserRole.create(playerUser, gamingRole, true)

//        new Match(winner: user1, looser: user2, winnerScore: 10, looserScore: 1).save(flush:true, failOnError:true)

     //   new Message(author: user1, target: user2, content: "nannanana").save(flush:true, failOnError:true)
    //    new Message(author: user2, target: user1, content: ":(").save(flush:true, failOnError:true)
    }
    def destroy = {
    }
}
