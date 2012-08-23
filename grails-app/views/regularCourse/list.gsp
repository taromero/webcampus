
<%@ page import="wc.domain.RegularCourse" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'regularCourse.label', default: 'RegularCourse')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-regularCourse" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-regularCourse" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="anio" title="${message(code: 'regularCourse.anio.label', default: 'Anio')}" />
					
						<g:sortableColumn property="division" title="${message(code: 'regularCourse.division.label', default: 'Division')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${regularCourseList}" status="i" var="regularCourse">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${regularCourse.id}">${fieldValue(bean: regularCourse, field: "anio")}</g:link></td>
					
						<td>${fieldValue(bean: regularCourse, field: "division")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${regularCourseTotal}" />
			</div>
		</div>
	</body>
</html>
