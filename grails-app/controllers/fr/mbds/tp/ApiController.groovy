package fr.mbds.tp


import grails.converters.JSON
import grails.converters.XML
import org.springframework.dao.DataIntegrityViolationException


class ApiController {

    static allowedMethods = [list:'GET',
                             show:'GET',
                             edit:'POST',
                             save:'POST',
                             update:['POST','PUT'],
                             delete:'DELETE'
    ]

    def userService
    def messageService
    def matchService

    def index() {
        //redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 50, 200)
        def list
        def listObject
        switch (params.entities){
            case "users":
                list = userService.list ()
                listObject =[userList: list, userTotal: userService.count()]
                break
            case "matchs":
                list = matchService.list ()
                listObject =[matchList: list, matchTotal: matchService.count()]
                break
            case "messages":
                list = messageService.list ()
                listObject =[messageList: list, messageTotal: messageService.count()]
                break
        }
        withFormat {
            json { render list as JSON }
            xml { render listObject as XML }
        }
    }





    def create() {
        render new User(request.JSON)
    }




    def save() {

        def entity
        switch (params.entity){
            case "user":
                entity = new User(request.JSON)
                break
            case "match":
                entity = new Match(request.JSON)
                break
            case "message":
                entity = new Message(request.JSON)
                break
        }

        if (!entity.save(flush: true)) {
            withFormat {
                json {
                    response.status = 403
                    render entity.errors as JSON
                }
                xml {
                    response.status =403
                    render entity.errors as XML
                }
            }
            return
        }
        flash.message = message(code: 'default.created.message', args: [message(code: 'entity.label', default: 'entity'), entity.id])
        withFormat {
            json {
                response.status = 201
                render entity as JSON
            }
            xml {
                response.status = 201
                render entity.id
            }
        }
    }

}
