# REST API GAMEMANAGEMENT

The service is running on 'http:localhost:8085/'.

## Open Endpoints

Open endpoints require no Authentication.

* [Login](login.md) : `POST /api/login/`

## Endpoints that require Authentication

Closed endpoints require a valid Token to be included in the header of the
request. A Token can be acquired from the Login view above.

### Current User related

Endpoints for listing and manipulating the Entities related to the User whose
Token is provided 

#### User

* [Show Accessible Users](user/get.md) : `GET /api/users`
* [Create User](user/post.md) : `POST /api/user`
* [Create User](user/post.md) : `POST /api/users`
* [Show An User](user/id/get.md) : `GET /api/user?id=`
* [Update An User](user/id/put.md) : `PUT /api/user?id=`
* [Delete An User](user/id/delete.md) : `DELETE /api/user?=id` 

#### Message

* [Show Accessible Messages ](message/get.md) : `GET /api/messages`
* [Create Message](message/post.md) : `POST /api/message`
* [Create Message](message/post.md) : `POST /api/messages`
* [Show An Message](message/id/get.md) : `GET /api/message?id=`
* [Update An Message](message/id/put.md) : `PUT /api/message?id=`
* [Delete An Message](message/id/delete.md) : `DELETE /api/message?=id` 

#### Match

* [Show Accessible Matchs](match/get.md) : `GET /api/matchs`
* [Create Match](match/post.md) : `POST /api/match`
* [Create Match](match/post.md) : `POST /api/matchs`
* [Show An Match](match/id/get.md) : `GET /api/match?id=`
* [Update An Match](match/id/put.md) : `PUT /api/match?id=`
* [Delete An Match](match/id/delete.md) : `DELETE /api/match?=id` 
