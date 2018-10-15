
# Delete Match's 

Delete the Match.

**URL** : `/api/match?id=`

**URL Parameters** : `id=[double]` where `id` is the ID of the match in the
database.

**Method** : `DELETE`

**Auth required** : YES

**Data** : `{}`

## Success Response

**Condition** : If the match exists.

**Code** : `204 NO CONTENT`

**Content** : `{}`

## Error Responses

**Condition** : If there was no match available to delete.

**Code** : `404 NOT FOUND`

**Content** : `{}`

