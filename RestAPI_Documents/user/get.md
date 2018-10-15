# Show Accessible Users

Show all Users that the active User can access.

**URL** : `/api/users/`

**Method** : `GET`

**Auth required** : YES

**Data constraints** : `{}`

## Success Responses

**Code** : `200 OK`

**Content** : list of all availables users

```json
[
{
"id": 1,
"matchLost": [],
"passwordExpired": false,
"accountExpired": false,
"matchWon": [
{
"id": 1
}
],
"username": "admin",
"accountLocked": false,
"password": "$2a$10$ffV88TItqmieUcOU24ejV.sWMpshDjf/o7Eiw7WKIPyHRRdFJK2nS",
"messageSent": [
{
"id": 1
}
],
"messageReceived": [
{
"id": 2
}
],
"profileImageName": "cat.jpg",
"enabled": true
},
{
"id": 2,
"matchLost": [
{
"id": 1
}
],
"passwordExpired": false,
"accountExpired": false,
"matchWon": [],
"username": "player",
"accountLocked": false,
"password": "$2a$10$ljBmgWd9X8BXuwjd.fVUdOTTzKakrduQjWHxv8sbmH8xtuTWcoTGi",
"messageSent": [
{
"id": 2
}
],
"messageReceived": [
{
"id": 1
}
],
"profileImageName": "macac.jpg",
"enabled": true
}
]
```
