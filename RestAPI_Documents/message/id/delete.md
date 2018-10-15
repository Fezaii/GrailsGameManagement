
# Delete Message's 

Delete the Message.

**URL** : `/api/message?id=`

**URL Parameters** : `id=[double]` where `id` is the ID of the message in the
database.

**Method** : `DELETE`

**Auth required** : YES

**Data** : `{}`

## Success Response

**Condition** : If the message exists.

**Code** : `204 NO CONTENT`

**Content** : `{}`

## Error Responses

**Condition** : If there was no message available to delete.

**Code** : `404 NOT FOUND`

**Content** : `{}`

