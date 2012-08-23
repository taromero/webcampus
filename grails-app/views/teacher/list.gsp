
<%@ page import="wc.domain.Teacher" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'teacher.label', default: 'Teacher')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-teacher" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-teacher" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="email" title="${message(code: 'teacher.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="firstName" title="${message(code: 'teacher.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'teacher.lastName.label', default: 'Last Name')}" />
					
						<g:sortableColumn property="homePhone" title="${message(code: 'teacher.homePhone.label', default: 'Home Phone')}" />
					
						<g:sortableColumn property="sex" title="${message(code: 'teacher.sex.label', default: 'Sex')}" />
					
						<g:sortableColumn property="address" title="${message(code: 'teacher.address.label', default: 'Address')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${teacherList}" status="i" var="teacher">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${teacher.id}">${fieldValue(bean: teacher, field: "email")}</g:link></td>
					
						<td>${fieldValue(bean: teacher, field: "firstName")}</td>
					
						<td>${fieldValue(bean: teacher, field: "lastName")}</td>
					
						<td>${fieldValue(bean: teacher, field: "homePhone")}</td>
					
						<td>${fieldValue(bean: teacher, field: "sex")}</td>
					
						<td>${fieldValue(bean: teacher, field: "address")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${teacherTotal}" />
			</div>
		</div>
	</body>
</html>
