package fr.mbds.tp

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            action = [GET: "show", GET: "list", POST: "save", PUT: "update", DELETE: "delete"]
            constraints {
                id(matches: /\d+/)
            }
        }

        "/"(controller:"login",action: "auth")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
