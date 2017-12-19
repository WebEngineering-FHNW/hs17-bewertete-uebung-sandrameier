<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <asset:link rel="icon" href="favicon.png" />
        <link rel="stylesheet"  href="https://fonts.googleapis.com/css?family=Nunito">
        <link rel="stylesheet"  href="https://fonts.googleapis.com/css?family=Raleway">
        <g:set var="entityName" value="${message(code: 'topic.label', default: 'Topic')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="subheader">
            Thema bearbeiten
        </div>
        <a href="#edit-topic" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="edit-topic" class="content scaffold-edit" role="main">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.topic}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.topic}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.topic}" method="PUT">
                <g:hiddenField name="version" value="${this.topic?.version}" />
                <fieldset class="form">
                    <f:all bean="topic"/>
                </fieldset>
                <fieldset class="buttons">
                    <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
