<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'match.label', default: 'Match')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-match" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-match" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <div class="box-body">

                <table id="matchs" class="table table-bordered table-striped">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Winner</th>
                        <th>Score Winner</th>
                        <th>Score Looser</th>
                        <th>Looser</th>
                    </tr>
                    </thead>

                    <tbody>
                    <g:each in="${matchList}" var="match">
                        <tr>
                            <td><a href="/match/show/${match.id}">${match.id} </a>
                            <td>${match.winner}</td>
                            <td>${match.winnerScore}</td>
                            <td>${match.looserScore}</td>
                            <td>${match.looser}</td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="pagination">
                <g:paginate total="${matchCount ?: 0}" />
            </div>
        </div>
    </body>
</html>