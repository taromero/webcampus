<%@ page import="wc.domain.Exam" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'exam.label', default: 'Exam')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>	
	<body>
		<h1 class="grid_12">
			<span><g:message code="default.list.label" args="[entityName]" /></span>
		</h1>
		<div class="grid_12">
			
			<div class="box">
				<div class="header">
					<h2><g:message code="default.list.label" args="[entityName]" /></h2>
				</div>
				
				<div class="content">
					<table class="styled">
						<thead>
							<tr>
								<g:sortableColumn property="result" title="${message(code: 'exam.result.label', default: 'Result')}" />
								<th><g:message code="exam.course.label" default="Course" /></th>
								<g:sortableColumn property="examDate" title="${message(code: 'exam.examDate.label', default: 'Exam Date')}" />
								<th><g:message code="exam.student.label" default="Student" /></th>
								<th>Actions</th>
							</tr>
						</thead>
						<tbody>
						<g:each in="${examList}" status="i" var="exam">
							<tr>
								<td><g:link action="show" id="${exam.id}">${fieldValue(bean: exam, field: "result")}</g:link></td>
								<td>${fieldValue(bean: exam, field: "course")}</td>
								<td><g:formatDate date="${exam.examDate}" /></td>
								<td>${fieldValue(bean: exam, field: "student")}</td>
								<td class="center">
									<a href="#" class="button small grey tooltip" data-gravity=s title="Editar"><i class="icon-pencil"></i></a>
									<a href="#" class="button small grey tooltip" data-gravity=s title="Eliminar"><i class="icon-remove"></i></a>
								</td>
							</tr>
						</g:each>
						</tbody>
					</table>	
				</div>
			</div>
			<a href="${createLink(action:'create')}" class="button grey block">
				<span class="icon icon-plus"></span><g:message code="exam.create.label"/>
			</a>
		</div>		
	</body>
</html>
