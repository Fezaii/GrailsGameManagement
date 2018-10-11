package fr.mbds.tp


import grails.converters.JSON
import grails.converters.XML
import org.springframework.dao.DataIntegrityViolationException


class ApiController {

    static allowedMethods = [list: 'GET',
                             show:'GET',
                             edit:'POST',
                             save:'POST',
                             update:['POST','PUT'],
                             delete:'DELETE'
    ]



    def userService

    def index() {
        switch (request.getMethod()) {
            case "POST":
                render text: "POST"
                println request.getHeader(name: 'Allow')
                break
            case "GET" :
                users()
                break
            default:
                render text: "DEFAULT"
                break
        }
    }


    def users(){
        switch (request.getMethod()) {

            case "POST":
                render text: "POST"
                println request.getHeader(name: 'Allow')
                break
            case "GET" :
                render userService.list () as JSON
                break
            default:
                render text: "DEFAULT"
                break
        }
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 50, 200)
        def list = userService.list ()
        def listObject =[userList: list, userTotal: userService.count()]
        withFormat {
            json { render list as JSON }
            xml { render listObject as XML }
        }
    }

    def create() {
        render new User(params)
    }


    def save() {
        def user = new User(request.JSON)
        if (!user.save(flush: true)) {
            withFormat {
                json {
                    response.status = 403
                    render user.errors as JSON
                }
                xml {
                    response.status =403
                    render user.errors as XML
                }
            }
            return
        }
        flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: '${className}'), user.id])
        withFormat {
            json {
                response.status = 201
                render user as JSON
            }
            xml {
                response.status = 201
                render user.id
            }
        }
    }

}
