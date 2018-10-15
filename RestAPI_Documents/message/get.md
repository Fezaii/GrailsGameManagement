# Show Accessible Message

Show all Messages that the active User can access.

**URL** : `/api/messages/`

**Method** : `GET`

**Auth required** : YES

**Data constraints** : `{}`

## Success Responses

**Code** : `200 OK`

**Content** : list of all availables messages

```json
[
{
"id": 2,
"target": {
"id": 1
},
"content": ":(",
"author": {
"id": 2
}
}
]
```
