
<%@ page import="solicitudes.Solicitud" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'solicitud.label', default: 'Solicitud')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="solicitud.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: solicitudInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="solicitud.fecha_realizada.label" default="Fecharealizada" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${solicitudInstance?.fecha_realizada}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="solicitud.fecha_aprobada.label" default="Fechaaprobada" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${solicitudInstance?.fecha_aprobada}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="solicitud.fecha_denegada.label" default="Fechadenegada" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${solicitudInstance?.fecha_denegada}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="solicitud.obserbaciones.label" default="Obserbaciones" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: solicitudInstance, field: "obserbaciones")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="solicitud.descripcion.label" default="Descripcion" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: solicitudInstance, field: "descripcion")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="solicitud.estado.label" default="Estado" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: solicitudInstance, field: "estado")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="solicitud.medio.label" default="Medio" /></td>
                            
                            <td valign="top" class="value"><g:link controller="medio" action="show" id="${solicitudInstance?.medio?.id}">${solicitudInstance?.medio?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="solicitud.persona.label" default="Persona" /></td>
                            
                            <td valign="top" class="value"><g:link controller="persona" action="show" id="${solicitudInstance?.persona?.id}">${solicitudInstance?.persona?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${solicitudInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
