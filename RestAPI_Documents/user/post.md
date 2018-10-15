# Create User's

Create an user if  does not already exist. Each User can only have one Account.

**URL** : `/api/user`

**Method** : `POST`

**Auth required** : YES

**Permissions required** : None

**Data example** All fields must be sent.

```json
{
"username": "[String]"
"password": "[String]"
}
```

### OR 


**URL** : `/api/users`

**Method** : `POST`

**Auth required** : YES

**Permissions required** : None

**Data example** All fields must be sent.

```json
{
"username": "[String]"
"password": "[String]"
}
```
## Success Response

**Condition** : If everything is OK and an user didn't exist .

**Code** : `201 CREATED`


## Error Responses

**Condition** : If User already exists.

**Code** : `303 SEE OTHER`

**Content example**

```json
{
"errors": [
{
"object": "fr.mbds.tp.User",
"field": "username",
"rejected-value": "ahmedhov",
"message": "La propriété [username] de la classe [class fr.mbds.tp.User] avec la valeur [ahmedhov] doit être unique"
}
]
}
```

### OR

**Condition** : If fields are missed.

**Code** : `400 BAD REQUEST`


