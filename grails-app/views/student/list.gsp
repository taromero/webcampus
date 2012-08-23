
<%@ page import="wc.domain.Student" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'student.label', default: 'Student')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-student" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-student" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="email" title="${message(code: 'student.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="firstName" title="${message(code: 'student.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'student.lastName.label', default: 'Last Name')}" />
					
						<g:sortableColumn property="homePhone" title="${message(code: 'student.homePhone.label', default: 'Home Phone')}" />
					
						<g:sortableColumn property="sex" title="${message(code: 'student.sex.label', default: 'Sex')}" />
					
						<g:sortableColumn property="address" title="${message(code: 'student.address.label', default: 'Address')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${studentList}" status="i" var="student">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${student.id}">${fieldValue(bean: student, field: "email")}</g:link></td>
					
						<td>${fieldValue(bean: student, field: "firstName")}</td>
					
						<td>${fieldValue(bean: student, field: "lastName")}</td>
					
						<td>${fieldValue(bean: student, field: "homePhone")}</td>
					
						<td>${fieldValue(bean: student, field: "sex")}</td>
					
						<td>${fieldValue(bean: student, field: "address")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${studentTotal}" />
			</div>
		</div>
	</body>
</html>
