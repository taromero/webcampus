<%@ page import="wc.domain.Course" %>



<div class="fieldcontain ${hasErrors(bean: course, field: 'exams', 'error')} ">
	<label for="exams">
		<g:message code="course.exams.label" default="Exams" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${course?.exams?}" var="e">
    <li><g:link controller="exam" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="exam" action="create" params="['course.id': course?.id]">${message(code: 'default.add.label', args: [message(code: 'exam.label', default: 'Exam')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: course, field: 'students', 'error')} ">
	<label for="students">
		<g:message code="course.students.label" default="Students" />
		
	</label>
	
</div>

<div class="fieldcontain ${hasErrors(bean: course, field: 'teachers', 'error')} ">
	<label for="teachers">
		<g:message code="course.teachers.label" default="Teachers" />
		
	</label>
	
</div>

