
<%@ page import="solicitudes.Persona" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'persona.label', default: 'Persona')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'persona.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="primer_nombre" title="${message(code: 'persona.primer_nombre.label', default: 'Primernombre')}" />
                        
                            <g:sortableColumn property="segundo_nombre" title="${message(code: 'persona.segundo_nombre.label', default: 'Segundonombre')}" />
                        
                            <g:sortableColumn property="primer_apellido" title="${message(code: 'persona.primer_apellido.label', default: 'Primerapellido')}" />
                        
                            <g:sortableColumn property="segundo_apellido" title="${message(code: 'persona.segundo_apellido.label', default: 'Segundoapellido')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${personaInstanceList}" status="i" var="personaInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${personaInstance.id}">${fieldValue(bean: personaInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: personaInstance, field: "primer_nombre")}</td>
                        
                            <td>${fieldValue(bean: personaInstance, field: "segundo_nombre")}</td>
                        
                            <td>${fieldValue(bean: personaInstance, field: "primer_apellido")}</td>
                        
                            <td>${fieldValue(bean: personaInstance, field: "segundo_apellido")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${personaInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
