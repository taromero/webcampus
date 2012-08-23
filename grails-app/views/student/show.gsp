
<%@ page import="wc.domain.Student" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'student.label', default: 'Student')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-student" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-student" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list student">
			
				<g:if test="${student?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="student.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${student}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${student?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="student.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${student}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${student?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="student.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${student}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${student?.homePhone}">
				<li class="fieldcontain">
					<span id="homePhone-label" class="property-label"><g:message code="student.homePhone.label" default="Home Phone" /></span>
					
						<span class="property-value" aria-labelledby="homePhone-label"><g:fieldValue bean="${student}" field="homePhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${student?.sex}">
				<li class="fieldcontain">
					<span id="sex-label" class="property-label"><g:message code="student.sex.label" default="Sex" /></span>
					
						<span class="property-value" aria-labelledby="sex-label"><g:fieldValue bean="${student}" field="sex"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${student?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="student.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${student}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${student?.attendances}">
				<li class="fieldcontain">
					<span id="attendances-label" class="property-label"><g:message code="student.attendances.label" default="Attendances" /></span>
					
						<g:each in="${student.attendances}" var="a">
						<span class="property-value" aria-labelledby="attendances-label"><g:link controller="attendance" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${student?.birthDate}">
				<li class="fieldcontain">
					<span id="birthDate-label" class="property-label"><g:message code="student.birthDate.label" default="Birth Date" /></span>
					
						<span class="property-value" aria-labelledby="birthDate-label"><g:formatDate date="${student?.birthDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${student?.courses}">
				<li class="fieldcontain">
					<span id="courses-label" class="property-label"><g:message code="student.courses.label" default="Courses" /></span>
					
						<g:each in="${student.courses}" var="c">
						<span class="property-value" aria-labelledby="courses-label"><g:link controller="course" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${student?.docNumber}">
				<li class="fieldcontain">
					<span id="docNumber-label" class="property-label"><g:message code="student.docNumber.label" default="Doc Number" /></span>
					
						<span class="property-value" aria-labelledby="docNumber-label"><g:fieldValue bean="${student}" field="docNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${student?.docType}">
				<li class="fieldcontain">
					<span id="docType-label" class="property-label"><g:message code="student.docType.label" default="Doc Type" /></span>
					
						<span class="property-value" aria-labelledby="docType-label"><g:fieldValue bean="${student}" field="docType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${student?.exams}">
				<li class="fieldcontain">
					<span id="exams-label" class="property-label"><g:message code="student.exams.label" default="Exams" /></span>
					
						<g:each in="${student.exams}" var="e">
						<span class="property-value" aria-labelledby="exams-label"><g:link controller="exam" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${student?.mobilePhone}">
				<li class="fieldcontain">
					<span id="mobilePhone-label" class="property-label"><g:message code="student.mobilePhone.label" default="Mobile Phone" /></span>
					
						<span class="property-value" aria-labelledby="mobilePhone-label"><g:fieldValue bean="${student}" field="mobilePhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${student?.notifications}">
				<li class="fieldcontain">
					<span id="notifications-label" class="property-label"><g:message code="student.notifications.label" default="Notifications" /></span>
					
						<g:each in="${student.notifications}" var="n">
						<span class="property-value" aria-labelledby="notifications-label"><g:link controller="notification" action="show" id="${n.id}">${n?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${student?.responsibles}">
				<li class="fieldcontain">
					<span id="responsibles-label" class="property-label"><g:message code="student.responsibles.label" default="Responsibles" /></span>
					
						<g:each in="${student.responsibles}" var="r">
						<span class="property-value" aria-labelledby="responsibles-label"><g:link controller="responsible" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${student?.id}" />
					<g:link class="edit" action="edit" id="${student?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
