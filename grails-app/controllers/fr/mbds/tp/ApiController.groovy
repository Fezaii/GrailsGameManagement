package fr.mbds.tp


import grails.converters.JSON
import grails.converters.XML
import org.springframework.dao.DataIntegrityViolationException


class ApiController {

    static allowedMethods = [list:'GET',
                             show:'GET',
                             save:'POST',
                             update:['POST','PUT'],
                             delete:'DELETE',
                             notfound:['PUT','DELETE']
    ]

    def userService
    def messageService
    def matchService

    def index() {
        redirect(action: "show", params: params)
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
        def action
        if(params.entity==null){
            action = params.entities
        }else{
            action = params.entity
        }
        def entity
        switch (action){
            case "user":
                entity = new User(request.JSON)
                break
            case "match":
                entity = new Match(request.JSON)
                break
            case "message":
                entity = new Message(request.JSON)
                break
            case "users":
                entity = new User(request.JSON)
                break
            case "matchs":
                entity = new Match(request.JSON)
                break
            case "messages":
                entity = new Message(request.JSON)
                break
        }

        if (!entity.save(flush: true)) {
            withFormat {
                json {
                    response.status = 400
                    render entity.errors as JSON
                }
                xml {
                    response.status =400
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

    def show() {

        if (params.id==null) {
            withFormat {
                json {
                    response.status = 400
                }
                xml {
                    response.status = 400
                }
            }
            return
        }
        def entity
        switch (params.entity){
            case "user":
                entity = User.get(params.id)
                break
            case "match":
                entity = Match.get(params.id)
                break
            case "message":
                entity = Message.get(params.id)
                break
        }
        if (!entity) {
            withFormat {
                json { response.sendError(404) }
                xml { response.sendError(404) }
            }
            return
        }
        def object = [entity: entity]
        withFormat {
            json { render object as JSON }
            xml { render object as XML }
        }
    }


    def update() {
        if (params.id==null) {
            withFormat {
                json {
                    response.status = 400
                }
                xml {
                    response.status = 400
                }
            }
            return
        }
        def entity
        switch (params.entity){
            case "user":
                entity = User.get(params.id)
                break
            case "match":
                entity = Match.get(params.id)
                break
            case "message":
                entity = Message.get(params.id)
                break
        }
        if (!entity) {
            withFormat {
                json { response.sendError(404) }
                xml { response.sendError(404) }
            }
            return
        }

        entity.properties= request.JSON

        if (!entity.save(flush: true)) {
            withFormat {
                json {
                    response.status = 403
                    render entity.errors as JSON
                }
                xml {
                    response.status = 403
                    render entity.errors as XML
                }
            }
            return
        }
        withFormat {
            json {
                response.status = 204
                render entity as JSON
            }
            xml {
                response.status = 204
                render ''
            }
        }
    }



    def delete() {
        if (params.id==null) {
            withFormat {
                json {
                    response.status = 400
                }
                xml {
                    response.status = 400
                }
            }
            return
        }
        def entity
        switch (params.entity){
            case "user":
                entity = User.get(params.id)
                break
            case "match":
                entity = Match.get(params.id)
                break
            case "message":
                entity = Message.get(params.id)
                break
        }
        if (!entity) {
            withFormat {
                json { response.sendError(404) }
                xml { response.sendError(404) }
            }
            return
        }
        try {
            entity.delete(flush: true)
            withFormat {
                json {
                    response.status = 204
                    render ''
                }
                xml {
                    response.status = 204
                    render ''
                }
            }
        }
        catch (DataIntegrityViolationException e) {
            withFormat {
                json { response.sendError(500) }
                xml { response.sendError(500) }
            }
        }
    }


    def notfound() {
        withFormat {
            json { response.sendError(404) }
            xml { response.sendError(404) }
        }
    }


}
