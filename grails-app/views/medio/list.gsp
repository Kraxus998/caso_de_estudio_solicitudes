
<%@ page import="solicitudes.Medio" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'medio.label', default: 'Medio')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'medio.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="nombre" title="${message(code: 'medio.nombre.label', default: 'Nombre')}" />
                        
                            <g:sortableColumn property="numero_inventario" title="${message(code: 'medio.numero_inventario.label', default: 'Numeroinventario')}" />
                        
                            <g:sortableColumn property="numero_serie" title="${message(code: 'medio.numero_serie.label', default: 'Numeroserie')}" />
                        
                            <g:sortableColumn property="marca" title="${message(code: 'medio.marca.label', default: 'Marca')}" />
                        
                            <g:sortableColumn property="color" title="${message(code: 'medio.color.label', default: 'Color')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${medioInstanceList}" status="i" var="medioInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${medioInstance.id}">${fieldValue(bean: medioInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: medioInstance, field: "nombre")}</td>
                        
                            <td>${fieldValue(bean: medioInstance, field: "numero_inventario")}</td>
                        
                            <td>${fieldValue(bean: medioInstance, field: "numero_serie")}</td>
                        
                            <td>${fieldValue(bean: medioInstance, field: "marca")}</td>
                        
                            <td>${fieldValue(bean: medioInstance, field: "color")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${medioInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
