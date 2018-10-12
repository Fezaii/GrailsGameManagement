<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'message.label', default: 'Message')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
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
        <a href="#show-message" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="show-message" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:display bean="message" />
            <g:form resource="${this.message}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.message}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
