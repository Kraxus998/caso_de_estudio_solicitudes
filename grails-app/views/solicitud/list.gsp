
<%@ page import="solicitudes.Solicitud" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'solicitud.label', default: 'Solicitud')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'solicitud.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="fecha_realizada" title="${message(code: 'solicitud.fecha_realizada.label', default: 'Fecharealizada')}" />
                        
                            <g:sortableColumn property="fecha_aprobada" title="${message(code: 'solicitud.fecha_aprobada.label', default: 'Fechaaprobada')}" />
                        
                            <g:sortableColumn property="fecha_denegada" title="${message(code: 'solicitud.fecha_denegada.label', default: 'Fechadenegada')}" />
                        
                            <g:sortableColumn property="obserbaciones" title="${message(code: 'solicitud.obserbaciones.label', default: 'Obserbaciones')}" />
                        
                            <g:sortableColumn property="descripcion" title="${message(code: 'solicitud.descripcion.label', default: 'Descripcion')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${solicitudInstanceList}" status="i" var="solicitudInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${solicitudInstance.id}">${fieldValue(bean: solicitudInstance, field: "id")}</g:link></td>
                        
                            <td><g:formatDate date="${solicitudInstance.fecha_realizada}" /></td>
                        
                            <td><g:formatDate date="${solicitudInstance.fecha_aprobada}" /></td>
                        
                            <td><g:formatDate date="${solicitudInstance.fecha_denegada}" /></td>
                        
                            <td>${fieldValue(bean: solicitudInstance, field: "obserbaciones")}</td>
                        
                            <td>${fieldValue(bean: solicitudInstance, field: "descripcion")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${solicitudInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
