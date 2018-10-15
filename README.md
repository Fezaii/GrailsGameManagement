# GrailsGameManagement
## Partie I : Grails (Hamza Boudradar)

Nous avons mis en place une plateforme de gestion d'utilisateurs avec des roles, leurs messages et leurs matchs.

Le rendu de projet prend donc la forme de ce site permettant d’administrer ou consulter son contenu selon le rôle de l’utilisateur authentifié
"http://localhost:8085"

INITIALISATION
Users, Messages et Matchs (cf. Bootstrap.groovy)
                                
Génération d'un message entre 2 users, et aussi un match.
Les différents rôles
Génération de 2 types d'utilisateur : 2 utilisateurs
1 Administrateur
1 Utilisateur

MISE EN PLACE DES SESSIONS
    Spring Security
        Génération automatique par Spring Security des classes User/Role/UserRole
    Rôles (cf. annotations dans contrôleurs et application.groovy)
        Les administrateurs pourront modifier n’importe quel profil utilisateur peu importe son rôle et créer/modifier/supprimer des utilisateurs/messages/matchs
Un utilisateur ayant le rôle « utilisateur » pourra consulter et editer son profil.

Users "/user/"
Création et modification d'un utilisateur (username, mot de passe et image)
Affichage d'une liste d'utilisateurs ou d'un utilisateur (username, image et mot de passe)
Suppression d'un profil utilisateur

Messages "/message/"
Création et modification d'un message.
Affichage d'une liste des messages ou d'un message (destinateur, destinataire, le contenu du message)
Suppression d'un message.

Matchs "/match/"
Création et modification d'un match.
Affichage d'une liste des matchs ou d'un match (le noms des 2 utilisateurs et leur scores respectifs)
Suppression d'un match.

Logout
Deconnexion du compte courant et redirection vers la page Login.

BONUS ACCOMPLIS
Uploader les fichiers en faisant un simple drag’n’drop en Ajax de l'image sur le champ en question
Uploader l'image avec n'importe quelle extension (ioFileNameUtils)

##Partie II : REST API (Fezai Ahmed)

Nous avons mis en place une API HTTP REST qui fournie plusieurs services en utilisant les methodes http suivantes:

[GET, POST,PUT,DELETE].

Tous les documents  concernant l'API REST et la collection des tests Postman sont accessibles dans les liens suivants : 

[Documents REST API GAMEMANAGEMENT](RestAPI_Documents/README.md)

[Tests REST API GAMEMANAGEMENT](RestAPI_TestsPostman/Grails%20Rest%20API%20Tests.postman_collection.json)                                  

###Bonus


L'implémentation d'une couche de sécurité pour notre API a été réalisée en utilisant l’extension « Spring Security Rest » 