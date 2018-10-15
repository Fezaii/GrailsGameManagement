# Show Single Message

Show a single Message if current User has access permissions to it.

**URL** : `/api/message?=id`

**URL Parameters** : `id=[double]` where `id` is the ID of the Message on the
server.

**Method** : `GET`

**Auth required** : YES


## Success Response

**Condition** : If Message exists and Authorized User has required permissions.

**Code** : `200 OK`

**Content example**

```json
{
"entity": {
"id": 2,
"target": {
"id": 1
},
"content": ":(",
"author": {
"id": 2
}
}
}
```

## Error Responses

**Condition** : If Message does not exist with `id` of provided `id` parameter.

**Code** : `404 NOT FOUND`

**Content** : `{}`

