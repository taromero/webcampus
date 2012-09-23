<%@ page import="wc.domain.Student" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'student.label', default: 'Student')}" />
	</head>
	<body>
		
		<div class="grid_12">
			
			<div class="box">
				<div class="header">
					<h2><g:message code="student.list.label"/></h2>
				</div>
				
				<div class="content">
					<table class="styled">
						<thead>
							<tr>
								<th><g:message code="student.email.label" default="Email"/></th>								
								<th><g:message code="student.lastName.label" default="Last Name"/></th>
								<th><g:message code="student.firstName.label" default="First Name"/></th>
								<th><g:message code="student.homePhone.label" default="Home Phone"/></th>
								<th><g:message code="student.sex.label" default="Sex"/></th>
								<th><g:message code="student.address.label" default="Address"/></th>
								<th><g:message code="student.actions.label" default="Actions"/></th>
							</tr>
						</thead>
						<tbody>
						<g:each in="${studentList}" var="student">
							<tr>
								<td>${fieldValue(bean: student, field: "email")}</td>
								<td>${fieldValue(bean: student, field: "firstName")}</td>
								<td>${fieldValue(bean: student, field: "lastName")}</td>
								<td>${fieldValue(bean: student, field: "homePhone")}</td>
								<td>${fieldValue(bean: student, field: "sex")}</td>
								<td>${fieldValue(bean: student, field: "address")}</td>
								<td class="center">
									<g:link action="edit" id="${student.id}" class="button small grey tooltip" data-gravity="s" title="Editar">
										<i class="icon-pencil"></i>
									</g:link>
									<g:link action="delete" id="${student.id}" class="button small grey tooltip" data-gravity="s" title="Eliminar"
										onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');">
										<i class="icon-remove"></i>
									</g:link>
								</td>
							</tr>
						</g:each>
						</tbody>
					</table>
				</div>
			</div>
			<a href="${createLink(action:'create')}" class="button grey block">
				<span class="icon icon-plus"></span><g:message code="student.create.label"/>
			</a>
		</div>		
	</body>	
</html>
