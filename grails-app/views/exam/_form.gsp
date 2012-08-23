<%@ page import="wc.domain.Exam" %>



<div class="fieldcontain ${hasErrors(bean: exam, field: 'result', 'error')} required">
	<label for="result">
		<g:message code="exam.result.label" default="Result" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="result" step="0.01" required="" value="${fieldValue(bean: exam, field: 'result')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: exam, field: 'course', 'error')} required">
	<label for="course">
		<g:message code="exam.course.label" default="Course" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="course" name="course.id" from="${wc.domain.Course.list()}" optionKey="id" required="" value="${exam?.course?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: exam, field: 'examDate', 'error')} required">
	<label for="examDate">
		<g:message code="exam.examDate.label" default="Exam Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="examDate" precision="day"  value="${exam?.examDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: exam, field: 'student', 'error')} required">
	<label for="student">
		<g:message code="exam.student.label" default="Student" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="student" name="student.id" from="${wc.domain.Student.list()}" optionKey="id" required="" value="${exam?.student?.id}" class="many-to-one"/>
</div>

