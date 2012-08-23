
<%@ page import="wc.domain.Exam" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'exam.label', default: 'Exam')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-exam" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-exam" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="result" title="${message(code: 'exam.result.label', default: 'Result')}" />
					
						<th><g:message code="exam.course.label" default="Course" /></th>
					
						<g:sortableColumn property="examDate" title="${message(code: 'exam.examDate.label', default: 'Exam Date')}" />
					
						<th><g:message code="exam.student.label" default="Student" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${examList}" status="i" var="exam">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${exam.id}">${fieldValue(bean: exam, field: "result")}</g:link></td>
					
						<td>${fieldValue(bean: exam, field: "course")}</td>
					
						<td><g:formatDate date="${exam.examDate}" /></td>
					
						<td>${fieldValue(bean: exam, field: "student")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${examTotal}" />
			</div>
		</div>
	</body>
</html>
