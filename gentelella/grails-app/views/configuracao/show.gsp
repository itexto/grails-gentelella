<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'configuracao.label', default: 'Configuracao')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>


          <ul class="nav nav-pills">
            <li><g:link  action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            <li><g:link  action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
          </ul>




        <div id="show-configuracao" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:display bean="configuracao" />
            <g:form resource="${this.configuracao}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="btn btn-default" action="edit" resource="${this.configuracao}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="btn btn-danger" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
