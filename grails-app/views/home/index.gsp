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


<div id="content" role="main">
    <section class="row colset-2-its">
        <img src="admintools.png" class="img-thumbnail" height="1000" width="2000"/>
    </section>

</div>

</body>
</html>
