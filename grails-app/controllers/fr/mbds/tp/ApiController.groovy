package fr.mbds.tp

import grails.converters.JSON


class ApiController {

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
                println request.getHeader(name:
                        'Allow')
                break
            case "GET" :
                render userService.list () as JSON
                break
            default:
                render text: "DEFAULT"
                break
        }
    }

    def addNewUser(){
        if (new User(request.JSON).save(flush: true)){

        }
    }
}
