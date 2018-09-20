<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Admin platform</title>
</head>
<body>
<content tag="nav">

    <li class="controller">
        <a href="http://localhost:8080/logout/index" class="controller" role="button" >Log out</a>
    </li>
</content>

<div class="svg" role="presentation">
    <div class="grails-logo-container">
        <asset:image src="grails-cupsonly-logo-white.svg" class="grails-logo"/>
    </div>
</div>

<div id="content" role="main">
    <section class="row colset-2-its">


        <div id="controllers" role="navigation">
            <ul>
                <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                    <li class="controller">
                        <a href="${c.logicalPropertyName}" class="controller" role="button" >${c.fullName}</a>

                    </li>
                </g:each>
            </ul>
        </div>
    </section>
</div>

</body>
</html>
