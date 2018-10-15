# Create Message's

Create an message.

**URL** : `/api/message`

**Method** : `POST`

**Auth required** : YES

**Permissions required** : None

**Data example** All fields must be sent.

```json
{"target": {"id": 2},"content": "blablabla","author": {"id": 1}}
```

### OR 


**URL** : `/api/messages`

**Method** : `POST`

**Auth required** : YES

**Permissions required** : None

**Data example** All fields must be sent.

```json
{"target": {"id": 2},"content": "blablabla","author": {"id": 1}}
```
## Success Response

**Condition** : If everything is OK  .

**Code** : `201 CREATED`


## Error Responses

**Condition** : If fields are missed.

**Code** : `400 BAD REQUEST`


