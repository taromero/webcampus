
<%@ page import="wc.domain.Attendance" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'attendance.label', default: 'Attendance')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-attendance" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-attendance" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="attendance.student.label" default="Student" /></th>
					
						<g:sortableColumn property="attendanceDate" title="${message(code: 'attendance.attendanceDate.label', default: 'Attendance Date')}" />
					
						<th><g:message code="attendance.course.label" default="Course" /></th>
					
						<g:sortableColumn property="wasHalfPresent" title="${message(code: 'attendance.wasHalfPresent.label', default: 'Was Half Present')}" />
					
						<g:sortableColumn property="wasPresent" title="${message(code: 'attendance.wasPresent.label', default: 'Was Present')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${attendanceList}" status="i" var="attendance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${attendance.id}">${fieldValue(bean: attendance, field: "student")}</g:link></td>
					
						<td><g:formatDate date="${attendance.attendanceDate}" /></td>
					
						<td>${fieldValue(bean: attendance, field: "course")}</td>
					
						<td><g:formatBoolean boolean="${attendance.wasHalfPresent}" /></td>
					
						<td><g:formatBoolean boolean="${attendance.wasPresent}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${attendanceTotal}" />
			</div>
		</div>
	</body>
</html>
