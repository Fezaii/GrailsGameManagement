<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Admin platform</title>
</head>
<body>
<content tag="nav">

    <li class="controller">
        <a href="http://localhost:8087/logout/index" class="controller" role="button" >Log out</a>
    </li>
</content>


<div id="content" role="main">
    <section class="row colset-2-its">

        <div id="controllers" role="navigation">
            <h2>Available Controllers:</h2>
            <ul>
                <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                    <li class="controller">
                        <g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link>
                    </li>
                </g:each>
            </ul>
        </div>
    </section>
</div>

</body>
</html>
