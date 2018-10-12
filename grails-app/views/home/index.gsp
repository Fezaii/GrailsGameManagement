<!doctype html>
<html xmlns:sec.loggedInUserInfo>
<head>
    <meta name="layout" content="main"/>
    <title>Admin platform</title>
</head>
<body>

    <content tag="nav">

        <sec:ifAnyGranted roles='ROLE_ADMIN'>
            <a>Administrateur</a>
            %{--<g:sec></g:sec>--}%
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
    </sec:ifAnyGranted>

        <sec:ifAnyGranted roles='ROLE_USER'>
            <li class="controller">
                <a href="${createLink(action: 'index', controller:'home') }" role="button"> Accueil </a>
            </li>
            <li class="controller">
                <a href="/user/show/${sec.loggedInUserInfo(field: 'id')}" role="button"> Profile </a>
            </li>
            <li class="controller">
                <a href="${createLink(action: 'index', controller:'logout') }" role="button"> Log out </a>
            </li>
        </sec:ifAnyGranted>

        <li class= "controller">
            <a> ${sec.loggedInUserInfo(field: 'username')} </a>
        </li>
</content>
    <sec:ifAnyGranted roles='ROLE_ADMIN'>
    <div class="panel panel-primary">
    <div class="panel-heading"> <center><h1>Welcome to Administrator platform</h1></center></div>
    <span class="pull-right clickable panel-toggle panel-collapse"><em class="fa fa-toggle-down"></em></span></div>
<div class="panel-body" style="display: block;">
    <center><p> This platform is used to manage Users, Roles, Messages and Matchs.
        <br>Le menu en haut de page nous permet de passer de rubrique en rubrique en tout simplicité.
        <br> Il contient cinq rubriques principaux :
        <br>Accueil : Update image
        <br>USERS :
        <br>Messages : drag & drop value
        <br>Matchs :
        <br>Logout : extention d'image
    </p></center>
</div>
</div>
</sec:ifAnyGranted>


<div id="content" role="main">
    <section class="row colset-2-its">
        <asset:image src="admintools.png" class="img-thumbnail" height="1000" width="2000"/>
    </section>

</div>

</body>
</html>
