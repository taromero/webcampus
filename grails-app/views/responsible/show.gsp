
<%@ page import="wc.domain.Responsible" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'responsible.label', default: 'Responsible')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-responsible" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-responsible" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list responsible">
			
				<g:if test="${responsible?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="responsible.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${responsible}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${responsible?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="responsible.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${responsible}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${responsible?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="responsible.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${responsible}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${responsible?.homePhone}">
				<li class="fieldcontain">
					<span id="homePhone-label" class="property-label"><g:message code="responsible.homePhone.label" default="Home Phone" /></span>
					
						<span class="property-value" aria-labelledby="homePhone-label"><g:fieldValue bean="${responsible}" field="homePhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${responsible?.sex}">
				<li class="fieldcontain">
					<span id="sex-label" class="property-label"><g:message code="responsible.sex.label" default="Sex" /></span>
					
						<span class="property-value" aria-labelledby="sex-label"><g:fieldValue bean="${responsible}" field="sex"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${responsible?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="responsible.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${responsible}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${responsible?.birthDate}">
				<li class="fieldcontain">
					<span id="birthDate-label" class="property-label"><g:message code="responsible.birthDate.label" default="Birth Date" /></span>
					
						<span class="property-value" aria-labelledby="birthDate-label"><g:formatDate date="${responsible?.birthDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${responsible?.docNumber}">
				<li class="fieldcontain">
					<span id="docNumber-label" class="property-label"><g:message code="responsible.docNumber.label" default="Doc Number" /></span>
					
						<span class="property-value" aria-labelledby="docNumber-label"><g:fieldValue bean="${responsible}" field="docNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${responsible?.docType}">
				<li class="fieldcontain">
					<span id="docType-label" class="property-label"><g:message code="responsible.docType.label" default="Doc Type" /></span>
					
						<span class="property-value" aria-labelledby="docType-label"><g:fieldValue bean="${responsible}" field="docType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${responsible?.mobilePhone}">
				<li class="fieldcontain">
					<span id="mobilePhone-label" class="property-label"><g:message code="responsible.mobilePhone.label" default="Mobile Phone" /></span>
					
						<span class="property-value" aria-labelledby="mobilePhone-label"><g:fieldValue bean="${responsible}" field="mobilePhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${responsible?.notifications}">
				<li class="fieldcontain">
					<span id="notifications-label" class="property-label"><g:message code="responsible.notifications.label" default="Notifications" /></span>
					
						<g:each in="${responsible.notifications}" var="n">
						<span class="property-value" aria-labelledby="notifications-label"><g:link controller="notification" action="show" id="${n.id}">${n?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${responsible?.students}">
				<li class="fieldcontain">
					<span id="students-label" class="property-label"><g:message code="responsible.students.label" default="Students" /></span>
					
						<g:each in="${responsible.students}" var="s">
						<span class="property-value" aria-labelledby="students-label"><g:link controller="student" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${responsible?.id}" />
					<g:link class="edit" action="edit" id="${responsible?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
