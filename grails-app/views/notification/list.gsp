
<%@ page import="wc.domain.Notification" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'notification.label', default: 'Notification')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-notification" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-notification" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="emmisionDate" title="${message(code: 'notification.emmisionDate.label', default: 'Emmision Date')}" />
					
						<g:sortableColumn property="message" title="${message(code: 'notification.message.label', default: 'Message')}" />
					
						<g:sortableColumn property="relevance" title="${message(code: 'notification.relevance.label', default: 'Relevance')}" />
					
						<g:sortableColumn property="relevantUntil" title="${message(code: 'notification.relevantUntil.label', default: 'Relevant Until')}" />
					
						<g:sortableColumn property="title" title="${message(code: 'notification.title.label', default: 'Title')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${notificationList}" status="i" var="notification">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${notification.id}">${fieldValue(bean: notification, field: "emmisionDate")}</g:link></td>
					
						<td>${fieldValue(bean: notification, field: "message")}</td>
					
						<td>${fieldValue(bean: notification, field: "relevance")}</td>
					
						<td><g:formatDate date="${notification.relevantUntil}" /></td>
					
						<td>${fieldValue(bean: notification, field: "title")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${notificationTotal}" />
			</div>
		</div>
	</body>
</html>
