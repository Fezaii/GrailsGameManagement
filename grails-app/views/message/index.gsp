<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'message.label', default: 'Message')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
    <content tag="nav">

        <sec:ifAnyGranted roles='ROLE_ADMIN'>
            <a>Administrateur</a>
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
        <a href="#list-message" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-message" class="content scaffold-list" role="main">
            <center><h1><g:message code="default.list.label" args="[entityName]" /></h1></center>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <div class="box-body">

                <center><table id="messages" class="table table-bordered table-striped" style="width: auto">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Author</th>
                        <th>Target</th>
                        <th>Content</th>
                    </tr>
                    </thead>

                    <tbody>
                    <g:each in="${messageList}" var="message">
                        <tr>
                            <td><a href="/message/show/${message.id}">${message.id} </a>
                            <td>${message.author}</td>
                            <td>${message.target}</td>
                            <td>${message.content}</td>
                        </tr>
                    </g:each>
                    </tbody>
                </table></center>
            </div>
        </div>
    </body>
</html>