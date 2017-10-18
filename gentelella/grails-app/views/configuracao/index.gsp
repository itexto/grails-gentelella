<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'configuracao.label', default: 'Configuracao')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>



            <ul class="nav nav-pills">
                <li><g:link  action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>


        <div id="list-configuracao" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${configuracaoList}" />

            <div class="pagination">
                <g:paginate total="${configuracaoCount ?: 0}" />
            </div>
        </div>
    </body>
</html>
