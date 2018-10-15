# Show Single User

Show a single User if current User has access permissions to it.

**URL** : `/api/user?=id`

**URL Parameters** : `id=[double]` where `id` is the ID of the User on the
server.

**Method** : `GET`

**Auth required** : YES


## Success Response

**Condition** : If User exists and Authorized User has required permissions.

**Code** : `200 OK`

**Content example**

```json
{
"entity": {
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
"password": "$2a$10$I8BU.8m6d/4/j5aoH2lir.TcdLMxOVEzCLVPAbP6.PywM3NF37XLG",
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
}
}
```

## Error Responses

**Condition** : If User does not exist with `id` of provided `id` parameter.

**Code** : `404 NOT FOUND`

**Content** : `{}`

