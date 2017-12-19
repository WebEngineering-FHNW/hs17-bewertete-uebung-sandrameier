<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <asset:link rel="icon" href="favicon.png" />
        <link rel="stylesheet"  href="https://fonts.googleapis.com/css?family=Nunito">
        <link rel="stylesheet"  href="https://fonts.googleapis.com/css?family=Raleway">
        <g:set var="entityName" value="${message(code: 'goal.label', default: 'Goal')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="subheader">
            Ziel erstellen
        </div>
        <a href="#create-goal" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="create-goal" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.goal}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.goal}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <%-- EXTERNAL: Code to add file is from here: https://de.slideshare.net/cavneb/upload-files-with-grails (GitHub: https://github.com/coderberry/FileUploader) --%>
            <g:form controller="goal" method="post" action="save" enctype="multipart/form-data">
                <fieldset class="form">
                    <f:all bean="goal" except="goalImage"/>
                    <input type="file" name="file" id="file" />
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
            <%-- EXTERNAL: Ends here --%>
        </div>
    </body>
</html>
