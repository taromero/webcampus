
<%@ page import="wc.domain.Teacher" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'teacher.label', default: 'Teacher')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-teacher" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-teacher" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list teacher">
			
				<g:if test="${teacher?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="teacher.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${teacher}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${teacher?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="teacher.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${teacher}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${teacher?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="teacher.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${teacher}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${teacher?.homePhone}">
				<li class="fieldcontain">
					<span id="homePhone-label" class="property-label"><g:message code="teacher.homePhone.label" default="Home Phone" /></span>
					
						<span class="property-value" aria-labelledby="homePhone-label"><g:fieldValue bean="${teacher}" field="homePhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${teacher?.sex}">
				<li class="fieldcontain">
					<span id="sex-label" class="property-label"><g:message code="teacher.sex.label" default="Sex" /></span>
					
						<span class="property-value" aria-labelledby="sex-label"><g:fieldValue bean="${teacher}" field="sex"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${teacher?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="teacher.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${teacher}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${teacher?.birthDate}">
				<li class="fieldcontain">
					<span id="birthDate-label" class="property-label"><g:message code="teacher.birthDate.label" default="Birth Date" /></span>
					
						<span class="property-value" aria-labelledby="birthDate-label"><g:formatDate date="${teacher?.birthDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${teacher?.courses}">
				<li class="fieldcontain">
					<span id="courses-label" class="property-label"><g:message code="teacher.courses.label" default="Courses" /></span>
					
						<g:each in="${teacher.courses}" var="c">
						<span class="property-value" aria-labelledby="courses-label"><g:link controller="course" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${teacher?.docNumber}">
				<li class="fieldcontain">
					<span id="docNumber-label" class="property-label"><g:message code="teacher.docNumber.label" default="Doc Number" /></span>
					
						<span class="property-value" aria-labelledby="docNumber-label"><g:fieldValue bean="${teacher}" field="docNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${teacher?.docType}">
				<li class="fieldcontain">
					<span id="docType-label" class="property-label"><g:message code="teacher.docType.label" default="Doc Type" /></span>
					
						<span class="property-value" aria-labelledby="docType-label"><g:fieldValue bean="${teacher}" field="docType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${teacher?.mobilePhone}">
				<li class="fieldcontain">
					<span id="mobilePhone-label" class="property-label"><g:message code="teacher.mobilePhone.label" default="Mobile Phone" /></span>
					
						<span class="property-value" aria-labelledby="mobilePhone-label"><g:fieldValue bean="${teacher}" field="mobilePhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${teacher?.notifications}">
				<li class="fieldcontain">
					<span id="notifications-label" class="property-label"><g:message code="teacher.notifications.label" default="Notifications" /></span>
					
						<g:each in="${teacher.notifications}" var="n">
						<span class="property-value" aria-labelledby="notifications-label"><g:link controller="notification" action="show" id="${n.id}">${n?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${teacher?.id}" />
					<g:link class="edit" action="edit" id="${teacher?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
