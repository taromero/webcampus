
<%@ page import="wc.domain.Responsible" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'responsible.label', default: 'Responsible')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-responsible" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-responsible" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="email" title="${message(code: 'responsible.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="firstName" title="${message(code: 'responsible.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'responsible.lastName.label', default: 'Last Name')}" />
					
						<g:sortableColumn property="homePhone" title="${message(code: 'responsible.homePhone.label', default: 'Home Phone')}" />
					
						<g:sortableColumn property="sex" title="${message(code: 'responsible.sex.label', default: 'Sex')}" />
					
						<g:sortableColumn property="address" title="${message(code: 'responsible.address.label', default: 'Address')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${responsibleList}" status="i" var="responsible">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${responsible.id}">${fieldValue(bean: responsible, field: "email")}</g:link></td>
					
						<td>${fieldValue(bean: responsible, field: "firstName")}</td>
					
						<td>${fieldValue(bean: responsible, field: "lastName")}</td>
					
						<td>${fieldValue(bean: responsible, field: "homePhone")}</td>
					
						<td>${fieldValue(bean: responsible, field: "sex")}</td>
					
						<td>${fieldValue(bean: responsible, field: "address")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${responsibleTotal}" />
			</div>
		</div>
	</body>
</html>
