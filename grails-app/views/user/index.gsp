<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
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

        <a href="#list-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-user" class="content scaffold-list" role="main">
            <center><h1><g:message code="default.list.label" args="[entityName]" /></h1></center>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>

            <div class="box">
                <g:link class="create" action="create"><i class="fa fa-user-plus fa-2x" style="padding: 10px; /*border: solid; border-color: #0f0f0f*/" aria-hidden="true"></i></g:link>
            <!-- /.box-header -->
                <div class="box-body">
                    <center><table id="users" class="table table-bordered table-striped" style="width: auto" >
                        <thead>
                        <tr>
                            <th>Username</th>
                            <th>Image</th>
                            <th>Password Expired</th>
                            <th>Account Locked</th>
                            <th>Account Expired</th>
                            <th>Enabled</th>
                        </tr>
                        </thead>

                        <tbody>
                        <g:each in="${userList}" var="user">
                            <tr>
                                <td><a href="/user/show/${user.id}">${user.username} </a>
                                <td><img src="http://localhost/img/${user.profileImageName}" class="img-rounded" width="55px" height="55px"/></td>
                                <td>${user.passwordExpired}</td>
                                <td>${user.accountLocked}</td>
                                <td>${user.accountExpired}</td>
                                <td>${user.enabled}</td>
                            </tr>
                        </g:each>
                        </tbody>
                    </table></center>
                </div>

    </body>
</html>