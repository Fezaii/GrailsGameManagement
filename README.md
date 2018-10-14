# GrailsGameManagement
Partie Grails (Hamza Boudradar)

Nous avons mis en place une plateforme de gestion d'utilisateurs avec des roles, leurs messages et leurs matchs.

Le rendu de projet prend donc la forme de ce site permettant d’administrer ou consulter son contenu selon le rôle de l’utilisateur authentifié

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

BONUS ACCOMPLIS
Uploader les fichiers en faisant un simple drag’n’drop en Ajax de l'image sur le champ en question
                                
