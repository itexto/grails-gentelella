<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'configuracao.label', default: 'Configuracao')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>


          <ul class="nav nav-pills">
            <li><g:link  action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
          </ul>




        <div id="create-configuracao" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.configuracao}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.configuracao}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.configuracao}" method="POST">
                <fieldset class="form">
                    <f:all bean="configuracao"/>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="btn btn-default" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
