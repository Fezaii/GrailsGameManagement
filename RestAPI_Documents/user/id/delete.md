
# Delete User's 

Delete the User.

**URL** : `/api/user?id=`

**URL Parameters** : `id=[double]` where `id` is the ID of the user in the
database.

**Method** : `DELETE`

**Auth required** : YES

**Data** : `{}`

## Success Response

**Condition** : If the user exists.

**Code** : `204 NO CONTENT`

**Content** : `{}`

## Error Responses

**Condition** : If there was no User available to delete.

**Code** : `404 NOT FOUND`

**Content** : `{}`

