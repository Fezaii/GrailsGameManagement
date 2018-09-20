<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#show-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="show-user" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>

            <table id="users" class="table table-bordered table-striped">
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
                    <tr>
                        <td><a href="/user/show/${user.id}">${user.username} </a>
                        <td><image src="http://localhost/img/cat.jpg" class="img-rounded" width="55px" height="55px"/></td>
                        <td>${user.passwordExpired}</td>
                        <td>${user.accountLocked}</td>
                        <td>${user.accountExpired}</td>
                        <td>${user.enabled}</td>
                    </tr>
                </tbody>
            </table>
            <g:form resource="${this.user}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.user}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
