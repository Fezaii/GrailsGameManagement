# Update Message

Update the Message.

**URL** : `/api/message?id=`

**URL Parameters** : `id=[double]` where `id` is the ID of the Message in the
databe

**Method** : `PUT`

**Auth required** : YES

**Data example** 

```json
{"target": {"id": 2},"content": "blablabljffea","author": {"id": 1}}
```

## Success Responses

**Condition** : Update can be performed either fully or partially.

**Code** : `204 No content`

## Error Response

**Condition** : message does not exist at URL

**Code** : `404 NOT FOUND`

**Content** : `{}`



