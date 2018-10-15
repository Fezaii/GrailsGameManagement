# Update User

Update the User.

**URL** : `/api/user?id=`

**URL Parameters** : `id=[double]` where `id` is the ID of the user in the
databe

**Method** : `PUT`

**Auth required** : YES

**Data example** 

```json
{
"username": "[String]"
"password": "[String]"
}
```

## Success Responses

**Condition** : Update can be performed either fully or partially.

**Code** : `204 No content`

## Error Response

**Condition** : User does not exist at URL

**Code** : `404 NOT FOUND`

**Content** : `{}`



