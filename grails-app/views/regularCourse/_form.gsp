<%@ page import="wc.domain.RegularCourse" %>



<div class="fieldcontain ${hasErrors(bean: regularCourse, field: 'anio', 'error')} required">
	<label for="anio">
		<g:message code="regularCourse.anio.label" default="Anio" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="anio" pattern="${regularCourse.constraints.anio.matches}" required="" value="${regularCourse?.anio}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regularCourse, field: 'division', 'error')} required">
	<label for="division">
		<g:message code="regularCourse.division.label" default="Division" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="division" required="" value="${regularCourse?.division}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regularCourse, field: 'exams', 'error')} ">
	<label for="exams">
		<g:message code="regularCourse.exams.label" default="Exams" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${regularCourse?.exams?}" var="e">
    <li><g:link controller="exam" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="exam" action="create" params="['regularCourse.id': regularCourse?.id]">${message(code: 'default.add.label', args: [message(code: 'exam.label', default: 'Exam')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: regularCourse, field: 'students', 'error')} ">
	<label for="students">
		<g:message code="regularCourse.students.label" default="Students" />
		
	</label>
	
</div>

<div class="fieldcontain ${hasErrors(bean: regularCourse, field: 'teachers', 'error')} ">
	<label for="teachers">
		<g:message code="regularCourse.teachers.label" default="Teachers" />
		
	</label>
	
</div>

