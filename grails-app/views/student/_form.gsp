<%@ page import="wc.domain.Student" %>



<div class="fieldcontain ${hasErrors(bean: student, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="student.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${student?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: student, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="student.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" pattern="${student.constraints.firstName.matches}" required="" value="${student?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: student, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="student.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" pattern="${student.constraints.lastName.matches}" required="" value="${student?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: student, field: 'homePhone', 'error')} required">
	<label for="homePhone">
		<g:message code="student.homePhone.label" default="Home Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="homePhone" pattern="${student.constraints.homePhone.matches}" required="" value="${student?.homePhone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: student, field: 'sex', 'error')} required">
	<label for="sex">
		<g:message code="student.sex.label" default="Sex" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="sex" from="${student.constraints.sex.inList}" required="" value="${student?.sex}" valueMessagePrefix="student.sex"/>
</div>

<div class="fieldcontain ${hasErrors(bean: student, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="student.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address" required="" value="${student?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: student, field: 'attendances', 'error')} ">
	<label for="attendances">
		<g:message code="student.attendances.label" default="Attendances" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${student?.attendances?}" var="a">
    <li><g:link controller="attendance" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="attendance" action="create" params="['student.id': student?.id]">${message(code: 'default.add.label', args: [message(code: 'attendance.label', default: 'Attendance')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: student, field: 'birthDate', 'error')} required">
	<label for="birthDate">
		<g:message code="student.birthDate.label" default="Birth Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="birthDate" precision="day"  value="${student?.birthDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: student, field: 'courses', 'error')} ">
	<label for="courses">
		<g:message code="student.courses.label" default="Courses" />
		
	</label>
	<g:select name="courses" from="${wc.domain.Course.list()}" multiple="multiple" optionKey="id" size="5" value="${student?.courses*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: student, field: 'docNumber', 'error')} required">
	<label for="docNumber">
		<g:message code="student.docNumber.label" default="Doc Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="docNumber" required="" value="${fieldValue(bean: student, field: 'docNumber')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: student, field: 'docType', 'error')} required">
	<label for="docType">
		<g:message code="student.docType.label" default="Doc Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="docType" required="" value="${student?.docType}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: student, field: 'exams', 'error')} ">
	<label for="exams">
		<g:message code="student.exams.label" default="Exams" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${student?.exams?}" var="e">
    <li><g:link controller="exam" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="exam" action="create" params="['student.id': student?.id]">${message(code: 'default.add.label', args: [message(code: 'exam.label', default: 'Exam')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: student, field: 'mobilePhone', 'error')} required">
	<label for="mobilePhone">
		<g:message code="student.mobilePhone.label" default="Mobile Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="mobilePhone" required="" value="${student?.mobilePhone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: student, field: 'notifications', 'error')} ">
	<label for="notifications">
		<g:message code="student.notifications.label" default="Notifications" />
		
	</label>
	<g:select name="notifications" from="${wc.domain.Notification.list()}" multiple="multiple" optionKey="id" size="5" value="${student?.notifications*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: student, field: 'responsibles', 'error')} ">
	<label for="responsibles">
		<g:message code="student.responsibles.label" default="Responsibles" />
		
	</label>
	<g:select name="responsibles" from="${wc.domain.Responsible.list()}" multiple="multiple" optionKey="id" size="5" value="${student?.responsibles*.id}" class="many-to-many"/>
</div>

