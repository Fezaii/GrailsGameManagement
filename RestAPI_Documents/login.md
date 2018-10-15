# Login

Used to collect a Token for a registered User.

**URL** : `/api/login/`

**Method** : `POST`

**Auth required** : NO

**Data constraints**

```json
{
"username": "[valid username]",
"password": "[password in plain text]"
}
```

**Data example**

```json
{
"username": "admin",
"password": "password"
}
```

## Success Response

**Code** : `200 OK`

**Content example**

```json
{
"access_token": "eyJlbmMiOiJBMTI4R0NNIiwiYWxnIjoiUlNBLU9BRVAifQ.Pe5sNHuOjLfAFueukkpXxqXDzC56y4jT8PZPFmNKQ9z4Gy1Evbb4OgMueUbJ71jcPUjO7281kAH1Qn7Ssg0ofvLJ34z40QLed4WQ3RQc5KjWYsMqdO_MRhWWlRHuaGDp__bLHbB7Ky_t4VYqA1niwJwWZK8v6jdIzZSm1dZyYCI.Kfz-NIwkVr69Wq2b.lP5i_cMH0V0xcnhUU2zfkAfdUMwkXiZwEsuCXbuMJZgVZyXmwsJiJgWstF8ki5VOzawsl00FCy-iUZLJcDw6wrX5EKRE5iGBhG-rmFhtB_d9C0m1FD764BHn_bI9edRuxSZ1aWl0u3Yqdk5UlOf7MrXUOKhm1HddQCPFe9IyzCINAzYyd9lKlH0iVTve1erp6aHH1dNG6DcRzV3JRoJWS4nYpoL90PxUu_xMy-e3HU87B1VeU3yxUOZk4LBadi5fR0j9UbpprZFNa5m61oPZ-RuILIHGmf3EnKuvSF3f9EnvfgKkIkv4ublxiPOmGHrwu2tEmO5yQ7477AETyGIXzMfaKcYeD3xD8vwLELzCoe1Krl-mvtVnZLhTuSZ5h4x5EdyHxRrlWj7s01hGh3rGplQVNer06XpSVtcDqXQWr5ybXPpr-0fnMimrAuVChc10dMf0SDUlSr06nKZhV7mgaY5SD6PMU8KzzG2bkSusriTwTSvRAKh4wZZ2m4pwNX-AK8_rizlu7gye0DsNX1dmGk0ICh3sTAZRkJ7Fw1ovUj0IC-UqIf1tbbxZ5dP4T9BGTm4Pq9GlLSPqDjlz23-U8GInNFgnWVwi3uXxbUYEVkDv2IvEQSO2ZjrR8OI0T4aK7xkEqFSOd9zhw97fYpvhU-2q837eoQNgfHAfEH2YgM4UYtuMd_xT0PLaHSCzq3Zp4b9XwgCjZa-FntFr0t71aBYATUY_CptU2cCjEWGB3au0rS8DzieAafcRsZhV5wrG28QOJm2qzDiJRFkjqEva3zkfU8Y--8lESRogFBKSVltYRSbop50UkPu-BZMfwLsOkh-o7iOPBwFoeJsIPtHmj_obL35ffmrsBnNRqz1XV0GvSxGYgLsnwI3eVnf600M-0FChUfChMIC_UHpq5jHl3W7AKQsepR1bdvW_NuHjtTy4nSVUd2bJPOEQZYMXaGr-2CGwao-W6F3n9akgOAeCbBFFr3lWSVhNAWfzbXUja5xT3XosRHqjmO0Ks1ikVod1luvZ.Mdb2KwJ85iZWNM5Bt8U6LA",
"expires_in": 3600,
}
```

## Error Response

**Condition** : If 'username' and 'password' combination is wrong.

**Code** : `401 Unauthorized`


