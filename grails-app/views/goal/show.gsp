<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <asset:link rel="icon" href="favicon.png" />
        <link rel="stylesheet"  href="https://fonts.googleapis.com/css?family=Nunito">
        <link rel="stylesheet"  href="https://fonts.googleapis.com/css?family=Raleway">
        <g:set var="entityName" value="${message(code: 'goal.label', default: 'Goal')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="subheader">
            Ziel Detailansicht
        </div>
        <a href="#show-goal" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><g:link class="home" action="index"><g:message code="default.home.label"/></g:link></li>
                <%-- <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li> --%>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="show-goal" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:display bean="goal" />
            <g:form resource="${this.goal}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.goal}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
