La couche de sécurité pour l'API a été réalisée.

###Avant le lancement des tests

Par defaut que les tests "spring security login" qui passent .

Les tests des 3 entitiés (User,Message,Match) ne passent pas (401 Unauthorized) avant la generation d'un "bear_token" [ici](../RestAPI_Documents/login.md) 

* Recuperation du "access_token"
* l'insertion du "access_token" généré dans le Bear_token de chaque requéte
