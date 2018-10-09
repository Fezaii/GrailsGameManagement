<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Admin platform</title>
</head>
<body>
<content tag="nav">
    <li class="controller">
        <a href="${createLink(action: 'index', controller:'home') }" role="button"> Accueil </a>
    </li>
    <li class="controller">
        <a href="${createLink(action: 'index', controller:'user') }" role="button"> Users </a>
    </li>

    <li class="controller">
        <a href="${createLink(action: 'index', controller:'message') }" role="button"> Messages </a>
    </li>

    <li class="controller">
        <a href="${createLink(action: 'index', controller:'match') }" role="button"> Matchs </a>
    </li>

    <li class="controller">
        <a href="${createLink(action: 'index', controller:'logout') }" role="button"> Log out </a>
    </li>

</content>
<div class="panel panel-primary">
    <div class="panel-heading"> <center><h1>Welcome to Administrator platform</h1></center></div>
    <span class="pull-right clickable panel-toggle panel-collapse"><em class="fa fa-toggle-down"></em></span></div>
<div class="panel-body" style="display: block;">
    <center><p> This platform is used to manage Users, Roles, Messages and Matchs.
        <br>Le menu en haut de page nous permet de passer de rubrique en rubrique en tout simplicité.
        <br> Il contient cinq rubriques principales :
        <br>Accueil :
        <br>USERS :
        <br>Messages :
        <br>Matchs :
        <br>Logout :
    </p></center>
</div>
</div>

<div id="content" role="main">
    <section class="row colset-2-its">
        <asset:image src="admintools.png" class="img-thumbnail" height="1000" width="2000"/>
    </section>

</div>

</body>
</html>
