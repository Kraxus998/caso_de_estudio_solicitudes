

<%@ page import="solicitudes.Solicitud" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'solicitud.label', default: 'Solicitud')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${solicitudInstance}">
            <div class="errors">
                <g:renderErrors bean="${solicitudInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${solicitudInstance?.id}" />
                <g:hiddenField name="version" value="${solicitudInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="fecha_realizada"><g:message code="solicitud.fecha_realizada.label" default="Fecharealizada" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: solicitudInstance, field: 'fecha_realizada', 'errors')}">
                                    <g:datePicker name="fecha_realizada" precision="day" value="${solicitudInstance?.fecha_realizada}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="fecha_aprobada"><g:message code="solicitud.fecha_aprobada.label" default="Fechaaprobada" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: solicitudInstance, field: 'fecha_aprobada', 'errors')}">
                                    <g:datePicker name="fecha_aprobada" precision="day" value="${solicitudInstance?.fecha_aprobada}" default="none" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="fecha_denegada"><g:message code="solicitud.fecha_denegada.label" default="Fechadenegada" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: solicitudInstance, field: 'fecha_denegada', 'errors')}">
                                    <g:datePicker name="fecha_denegada" precision="day" value="${solicitudInstance?.fecha_denegada}" default="none" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="obserbaciones"><g:message code="solicitud.obserbaciones.label" default="Obserbaciones" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: solicitudInstance, field: 'obserbaciones', 'errors')}">
                                    <g:textField name="obserbaciones" value="${solicitudInstance?.obserbaciones}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="descripcion"><g:message code="solicitud.descripcion.label" default="Descripcion" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: solicitudInstance, field: 'descripcion', 'errors')}">
                                    <g:textField name="descripcion" value="${solicitudInstance?.descripcion}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="estado"><g:message code="solicitud.estado.label" default="Estado" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: solicitudInstance, field: 'estado', 'errors')}">
                                    <g:select name="estado" from="${solicitudInstance.constraints.estado.inList}" value="${solicitudInstance?.estado}" valueMessagePrefix="solicitud.estado"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="medio"><g:message code="solicitud.medio.label" default="Medio" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: solicitudInstance, field: 'medio', 'errors')}">
                                    <g:select name="medio.id" from="${solicitudes.Medio.list()}" optionKey="id" value="${solicitudInstance?.medio?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="persona"><g:message code="solicitud.persona.label" default="Persona" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: solicitudInstance, field: 'persona', 'errors')}">
                                    <g:select name="persona.id" from="${solicitudes.Persona.list()}" optionKey="id" value="${solicitudInstance?.persona?.id}"  />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
