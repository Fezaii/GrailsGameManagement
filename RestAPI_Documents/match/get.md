# Show Accessible Matchs

Show all Matchs that the active User can access.

**URL** : `/api/matchs/`

**Method** : `GET`

**Auth required** : YES

**Data constraints** : `{}`

## Success Responses

**Code** : `200 OK`

**Content** : list of all availables matchs

```json
[
{
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
]
```
