<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#edit-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
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
