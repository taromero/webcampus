
<%@ page import="wc.domain.RegularCourse" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'regularCourse.label', default: 'RegularCourse')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-regularCourse" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-regularCourse" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list regularCourse">
			
				<g:if test="${regularCourse?.anio}">
				<li class="fieldcontain">
					<span id="anio-label" class="property-label"><g:message code="regularCourse.anio.label" default="Anio" /></span>
					
						<span class="property-value" aria-labelledby="anio-label"><g:fieldValue bean="${regularCourse}" field="anio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${regularCourse?.division}">
				<li class="fieldcontain">
					<span id="division-label" class="property-label"><g:message code="regularCourse.division.label" default="Division" /></span>
					
						<span class="property-value" aria-labelledby="division-label"><g:fieldValue bean="${regularCourse}" field="division"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${regularCourse?.exams}">
				<li class="fieldcontain">
					<span id="exams-label" class="property-label"><g:message code="regularCourse.exams.label" default="Exams" /></span>
					
						<g:each in="${regularCourse.exams}" var="e">
						<span class="property-value" aria-labelledby="exams-label"><g:link controller="exam" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${regularCourse?.students}">
				<li class="fieldcontain">
					<span id="students-label" class="property-label"><g:message code="regularCourse.students.label" default="Students" /></span>
					
						<g:each in="${regularCourse.students}" var="s">
						<span class="property-value" aria-labelledby="students-label"><g:link controller="student" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${regularCourse?.teachers}">
				<li class="fieldcontain">
					<span id="teachers-label" class="property-label"><g:message code="regularCourse.teachers.label" default="Teachers" /></span>
					
						<g:each in="${regularCourse.teachers}" var="t">
						<span class="property-value" aria-labelledby="teachers-label"><g:link controller="teacher" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${regularCourse?.id}" />
					<g:link class="edit" action="edit" id="${regularCourse?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
