<%@ page import="wc.domain.SubjectAssignment" %>



<div class="fieldcontain ${hasErrors(bean: subjectAssignment, field: 'course', 'error')} required">
	<label for="course">
		<g:message code="subjectAssignment.course.label" default="Course" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="course" name="course.id" from="${wc.domain.Course.list()}" optionKey="id" required="" value="${subjectAssignment?.course?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: subjectAssignment, field: 'weekDay', 'error')} required">
	<label for="weekDay">
		<g:message code="subjectAssignment.weekDay.label" default="Week Day" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="weekDay" from="${subjectAssignment.constraints.weekDay.inList}" required="" value="${subjectAssignment?.weekDay}" valueMessagePrefix="subjectAssignment.weekDay"/>
</div>

<div class="fieldcontain ${hasErrors(bean: subjectAssignment, field: 'startSchedule', 'error')} required">
	<label for="startSchedule">
		<g:message code="subjectAssignment.startSchedule.label" default="Start Schedule" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="startSchedule" pattern="${subjectAssignment.constraints.startSchedule.matches}" required="" value="${subjectAssignment?.startSchedule}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: subjectAssignment, field: 'endSchedule', 'error')} required">
	<label for="endSchedule">
		<g:message code="subjectAssignment.endSchedule.label" default="End Schedule" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="endSchedule" pattern="${subjectAssignment.constraints.endSchedule.matches}" required="" value="${subjectAssignment?.endSchedule}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: subjectAssignment, field: 'subject', 'error')} required">
	<label for="subject">
		<g:message code="subjectAssignment.subject.label" default="Subject" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="subject" name="subject.id" from="${wc.domain.Subject.list()}" optionKey="id" required="" value="${subjectAssignment?.subject?.id}" class="many-to-one"/>
</div>

