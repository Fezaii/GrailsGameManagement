package fr.mbds.tp

class UrlMappings {

    static mappings = {

        "/$controller/$action?/$id?" {
            constraints {
                // apply constraints here
            }
        }


        "/$controller/user/$action?/$id?(.$format)?"{
            entity ="user"
            action = [GET: "show", POST: "save", PUT: "update", DELETE: "delete"]
            constraints {
                id(matches: /\d+/)
            }
        }

        "/$controller/message/$action?/$id?(.$format)?"{
            entity ="message"
            action = [GET: "show", POST: "save", PUT: "update", DELETE: "delete"]
            constraints {
                id(matches: /\d+/)
            }
        }


        "/$controller/match/$action?/$id?(.$format)?"{
            entity ="match"
            action = [GET: "show", POST: "save", PUT: "update", DELETE: "delete"]
            constraints {
                id(matches: /\d+/)
            }
        }


        "/$controller/users/$action?(.$format)?"{
            entities ="users"
            action = [GET: "list", POST: "save"]
        }

        "/$controller/messages/$action?(.$format)?"{
            entities ="messages"
            action = [GET: "list", POST: "save"]
        }

        "/$controller/matchs/$action?(.$format)?"{
            entities ="matchs"
            action = [GET: "list", POST: "save"]
        }




        "/"(controller:"login",action: "auth")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
