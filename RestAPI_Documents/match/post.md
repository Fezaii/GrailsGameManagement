# Create Match's

Create an match.

**URL** : `/api/match`

**Method** : `POST`

**Auth required** : YES

**Permissions required** : None

**Data example** All fields must be sent.

```json
{"winnerScore": 12,"looserScore": 3,"winner": {"id": 2},"looser": {"id": 1}}
```

### OR 


**URL** : `/api/matchs`

**Method** : `POST`

**Auth required** : YES

**Permissions required** : None

**Data example** All fields must be sent.

```json
{"winnerScore": 12,"looserScore": 3,"winner": {"id": 2},"looser": {"id": 1}}
```
## Success Response

**Condition** : If everything is OK .

**Code** : `201 CREATED`


## Error Responses


**Condition** : If fields are missed.

**Code** : `400 BAD REQUEST`


