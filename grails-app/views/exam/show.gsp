
<%@ page import="wc.domain.Exam" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'exam.label', default: 'Exam')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-exam" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-exam" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list exam">
			
				<g:if test="${exam?.result}">
				<li class="fieldcontain">
					<span id="result-label" class="property-label"><g:message code="exam.result.label" default="Result" /></span>
					
						<span class="property-value" aria-labelledby="result-label"><g:fieldValue bean="${exam}" field="result"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${exam?.course}">
				<li class="fieldcontain">
					<span id="course-label" class="property-label"><g:message code="exam.course.label" default="Course" /></span>
					
						<span class="property-value" aria-labelledby="course-label"><g:link controller="course" action="show" id="${exam?.course?.id}">${exam?.course?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${exam?.examDate}">
				<li class="fieldcontain">
					<span id="examDate-label" class="property-label"><g:message code="exam.examDate.label" default="Exam Date" /></span>
					
						<span class="property-value" aria-labelledby="examDate-label"><g:formatDate date="${exam?.examDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${exam?.student}">
				<li class="fieldcontain">
					<span id="student-label" class="property-label"><g:message code="exam.student.label" default="Student" /></span>
					
						<span class="property-value" aria-labelledby="student-label"><g:link controller="student" action="show" id="${exam?.student?.id}">${exam?.student?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${exam?.id}" />
					<g:link class="edit" action="edit" id="${exam?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
