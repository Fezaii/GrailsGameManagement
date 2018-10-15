# Update Match

Update the Match.

**URL** : `/api/match?id=`

**URL Parameters** : `id=[double]` where `id` is the ID of the Match in the
databe

**Method** : `PUT`

**Auth required** : YES

**Data example** 

```json
{"winnerScore": 111,"looserScore": 23,"winner": {"id": 2},"looser": {"id": 1}}
```

## Success Responses

**Condition** : Update can be performed either fully or partially.

**Code** : `204 No content`

## Error Response

**Condition** : Match does not exist at URL

**Code** : `404 NOT FOUND`

**Content** : `{}`



