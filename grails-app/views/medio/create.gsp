

<%@ page import="solicitudes.Medio" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'medio.label', default: 'Medio')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${medioInstance}">
            <div class="errors">
                <g:renderErrors bean="${medioInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nombre"><g:message code="medio.nombre.label" default="Nombre" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: medioInstance, field: 'nombre', 'errors')}">
                                    <g:textField name="nombre" value="${medioInstance?.nombre}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="numero_inventario"><g:message code="medio.numero_inventario.label" default="Numeroinventario" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: medioInstance, field: 'numero_inventario', 'errors')}">
                                    <g:textField name="numero_inventario" maxlength="11" value="${medioInstance?.numero_inventario}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="numero_serie"><g:message code="medio.numero_serie.label" default="Numeroserie" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: medioInstance, field: 'numero_serie', 'errors')}">
                                    <g:textField name="numero_serie" maxlength="10" value="${medioInstance?.numero_serie}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="marca"><g:message code="medio.marca.label" default="Marca" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: medioInstance, field: 'marca', 'errors')}">
                                    <g:textField name="marca" value="${medioInstance?.marca}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="color"><g:message code="medio.color.label" default="Color" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: medioInstance, field: 'color', 'errors')}">
                                    <g:textField name="color" value="${medioInstance?.color}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="modelo"><g:message code="medio.modelo.label" default="Modelo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: medioInstance, field: 'modelo', 'errors')}">
                                    <g:textField name="modelo" value="${medioInstance?.modelo}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="descripcion"><g:message code="medio.descripcion.label" default="Descripcion" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: medioInstance, field: 'descripcion', 'errors')}">
                                    <g:textField name="descripcion" value="${medioInstance?.descripcion}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="local"><g:message code="medio.local.label" default="Local" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: medioInstance, field: 'local', 'errors')}">
                                    <g:select name="local.id" from="${solicitudes.Local.list()}" optionKey="id" value="${medioInstance?.local?.id}"  />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
