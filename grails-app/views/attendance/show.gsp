
<%@ page import="wc.domain.Attendance" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'attendance.label', default: 'Attendance')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-attendance" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-attendance" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list attendance">
			
				<g:if test="${attendance?.student}">
				<li class="fieldcontain">
					<span id="student-label" class="property-label"><g:message code="attendance.student.label" default="Student" /></span>
					
						<span class="property-value" aria-labelledby="student-label"><g:link controller="student" action="show" id="${attendance?.student?.id}">${attendance?.student?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${attendance?.attendanceDate}">
				<li class="fieldcontain">
					<span id="attendanceDate-label" class="property-label"><g:message code="attendance.attendanceDate.label" default="Attendance Date" /></span>
					
						<span class="property-value" aria-labelledby="attendanceDate-label"><g:formatDate date="${attendance?.attendanceDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${attendance?.course}">
				<li class="fieldcontain">
					<span id="course-label" class="property-label"><g:message code="attendance.course.label" default="Course" /></span>
					
						<span class="property-value" aria-labelledby="course-label"><g:link controller="course" action="show" id="${attendance?.course?.id}">${attendance?.course?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${attendance?.wasHalfPresent}">
				<li class="fieldcontain">
					<span id="wasHalfPresent-label" class="property-label"><g:message code="attendance.wasHalfPresent.label" default="Was Half Present" /></span>
					
						<span class="property-value" aria-labelledby="wasHalfPresent-label"><g:formatBoolean boolean="${attendance?.wasHalfPresent}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${attendance?.wasPresent}">
				<li class="fieldcontain">
					<span id="wasPresent-label" class="property-label"><g:message code="attendance.wasPresent.label" default="Was Present" /></span>
					
						<span class="property-value" aria-labelledby="wasPresent-label"><g:formatBoolean boolean="${attendance?.wasPresent}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${attendance?.id}" />
					<g:link class="edit" action="edit" id="${attendance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
