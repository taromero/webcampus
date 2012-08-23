
<%@ page import="wc.domain.Notification" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'notification.label', default: 'Notification')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-notification" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-notification" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list notification">
			
				<g:if test="${notification?.emmisionDate}">
				<li class="fieldcontain">
					<span id="emmisionDate-label" class="property-label"><g:message code="notification.emmisionDate.label" default="Emmision Date" /></span>
					
						<span class="property-value" aria-labelledby="emmisionDate-label"><g:formatDate date="${notification?.emmisionDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${notification?.message}">
				<li class="fieldcontain">
					<span id="message-label" class="property-label"><g:message code="notification.message.label" default="Message" /></span>
					
						<span class="property-value" aria-labelledby="message-label"><g:fieldValue bean="${notification}" field="message"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${notification?.relevance}">
				<li class="fieldcontain">
					<span id="relevance-label" class="property-label"><g:message code="notification.relevance.label" default="Relevance" /></span>
					
						<span class="property-value" aria-labelledby="relevance-label"><g:fieldValue bean="${notification}" field="relevance"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${notification?.relevantUntil}">
				<li class="fieldcontain">
					<span id="relevantUntil-label" class="property-label"><g:message code="notification.relevantUntil.label" default="Relevant Until" /></span>
					
						<span class="property-value" aria-labelledby="relevantUntil-label"><g:formatDate date="${notification?.relevantUntil}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${notification?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="notification.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${notification}" field="title"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${notification?.id}" />
					<g:link class="edit" action="edit" id="${notification?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
