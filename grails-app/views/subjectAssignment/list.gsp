
<%@ page import="wc.domain.SubjectAssignment" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'subjectAssignment.label', default: 'SubjectAssignment')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-subjectAssignment" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-subjectAssignment" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="subjectAssignment.course.label" default="Course" /></th>
					
						<g:sortableColumn property="weekDay" title="${message(code: 'subjectAssignment.weekDay.label', default: 'Week Day')}" />
					
						<g:sortableColumn property="startSchedule" title="${message(code: 'subjectAssignment.startSchedule.label', default: 'Start Schedule')}" />
					
						<g:sortableColumn property="endSchedule" title="${message(code: 'subjectAssignment.endSchedule.label', default: 'End Schedule')}" />
					
						<th><g:message code="subjectAssignment.subject.label" default="Subject" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${subjectAssignmentList}" status="i" var="subjectAssignment">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${subjectAssignment.id}">${fieldValue(bean: subjectAssignment, field: "course")}</g:link></td>
					
						<td>${fieldValue(bean: subjectAssignment, field: "weekDay")}</td>
					
						<td>${fieldValue(bean: subjectAssignment, field: "startSchedule")}</td>
					
						<td>${fieldValue(bean: subjectAssignment, field: "endSchedule")}</td>
					
						<td>${fieldValue(bean: subjectAssignment, field: "subject")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${subjectAssignmentTotal}" />
			</div>
		</div>
	</body>
</html>
