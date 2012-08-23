<%@ page import="wc.domain.Attendance" %>



<div class="fieldcontain ${hasErrors(bean: attendance, field: 'student', 'error')} required">
	<label for="student">
		<g:message code="attendance.student.label" default="Student" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="student" name="student.id" from="${wc.domain.Student.list()}" optionKey="id" required="" value="${attendance?.student?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: attendance, field: 'attendanceDate', 'error')} required">
	<label for="attendanceDate">
		<g:message code="attendance.attendanceDate.label" default="Attendance Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="attendanceDate" precision="day"  value="${attendance?.attendanceDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: attendance, field: 'course', 'error')} required">
	<label for="course">
		<g:message code="attendance.course.label" default="Course" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="course" name="course.id" from="${wc.domain.Course.list()}" optionKey="id" required="" value="${attendance?.course?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: attendance, field: 'wasHalfPresent', 'error')} ">
	<label for="wasHalfPresent">
		<g:message code="attendance.wasHalfPresent.label" default="Was Half Present" />
		
	</label>
	<g:checkBox name="wasHalfPresent" value="${attendance?.wasHalfPresent}" />
</div>

<div class="fieldcontain ${hasErrors(bean: attendance, field: 'wasPresent', 'error')} ">
	<label for="wasPresent">
		<g:message code="attendance.wasPresent.label" default="Was Present" />
		
	</label>
	<g:checkBox name="wasPresent" value="${attendance?.wasPresent}" />
</div>

