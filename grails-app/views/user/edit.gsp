<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
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
        <a href="#edit-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <sec:ifAnyGranted roles='ROLE_ADMIN'>
                    <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                </sec:ifAnyGranted>

            </ul>
        </div>
        <div id="edit-user" class="content scaffold-edit" role="main">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.user}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.user}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.user}" method="PUT"  enctype="multipart/form-data">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                <g:form action="/user/save" method="PUT" >

                    <div class='form-group'>
                        <label for='username'> Username* </label>
                        <input type="text" class="form-control" name="username" placeholder="Username" required="" id="username" />
                    </div>


                    <div class='form-group'>
                        <label for='password'> Password* </label>
                        <input type="password" class="form-control" name="password" placeholder="Enter your Password" required="" id="password" />
                    </div>


                    <div class="form-group">
                        <label> Profile image </label>
                        <input type="file" name="profileImageFile"/>
                    </div>
                </g:form>
                <fieldset class="buttons">
                    <g:submitButton name="update" class="save" value="${message(code: 'default.button.update.label', default: 'update')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
