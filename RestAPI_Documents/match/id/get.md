# Show Single Match

Show a single Match if current User has access permissions to it.

**URL** : `/api/match?=id`

**URL Parameters** : `id=[double]` where `id` is the ID of the Match on the
server.

**Method** : `GET`

**Auth required** : YES


## Success Response

**Condition** : If Match exists and Authorized User has required permissions.

**Code** : `200 OK`

**Content example**

```json
{
"entity": {
"id": 1,
"winnerScore": 10,
"looserScore": 1,
"winner": {
"id": 1
},
"looser": {
"id": 2
}
}
}
```

## Error Responses

**Condition** : If Match does not exist with `id` of provided `id` parameter.

**Code** : `404 NOT FOUND`

**Content** : `{}`

