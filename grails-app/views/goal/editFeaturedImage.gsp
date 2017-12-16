<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'goal.label', default: 'Goal')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#edit-goal" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="edit-goal" class="content scaffold-edit" role="main">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
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
            <%-- EXTERNAL: This code is from here: http://guides.grails.org/grails-upload-file/guide/index.html --%>
            <g:uploadForm name="uploadFeaturedImage" action="uploadFeaturedImage">
                <g:hiddenField name="version" value="${this.goal?.version}" />
                <input type="file" name="featuredImageFile" />
                <fieldset class="buttons">
                    <input class="save" type="submit" value="${message(code: 'goal.featuredImage.upload.label', default: 'Upload')}" />
                </fieldset>
            </g:uploadForm>
            <%-- EXTERNAL: Ends here --%>
        </div>
    </body>
</html>
