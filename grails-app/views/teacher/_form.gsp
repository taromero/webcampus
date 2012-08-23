<%@ page import="wc.domain.Teacher" %>



<div class="fieldcontain ${hasErrors(bean: teacher, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="teacher.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${teacher?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: teacher, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="teacher.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" pattern="${teacher.constraints.firstName.matches}" required="" value="${teacher?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: teacher, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="teacher.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" pattern="${teacher.constraints.lastName.matches}" required="" value="${teacher?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: teacher, field: 'homePhone', 'error')} required">
	<label for="homePhone">
		<g:message code="teacher.homePhone.label" default="Home Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="homePhone" pattern="${teacher.constraints.homePhone.matches}" required="" value="${teacher?.homePhone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: teacher, field: 'sex', 'error')} required">
	<label for="sex">
		<g:message code="teacher.sex.label" default="Sex" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="sex" from="${teacher.constraints.sex.inList}" required="" value="${teacher?.sex}" valueMessagePrefix="teacher.sex"/>
</div>

<div class="fieldcontain ${hasErrors(bean: teacher, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="teacher.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address" required="" value="${teacher?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: teacher, field: 'birthDate', 'error')} required">
	<label for="birthDate">
		<g:message code="teacher.birthDate.label" default="Birth Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="birthDate" precision="day"  value="${teacher?.birthDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: teacher, field: 'courses', 'error')} ">
	<label for="courses">
		<g:message code="teacher.courses.label" default="Courses" />
		
	</label>
	<g:select name="courses" from="${wc.domain.Course.list()}" multiple="multiple" optionKey="id" size="5" value="${teacher?.courses*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: teacher, field: 'docNumber', 'error')} required">
	<label for="docNumber">
		<g:message code="teacher.docNumber.label" default="Doc Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="docNumber" required="" value="${fieldValue(bean: teacher, field: 'docNumber')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: teacher, field: 'docType', 'error')} required">
	<label for="docType">
		<g:message code="teacher.docType.label" default="Doc Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="docType" required="" value="${teacher?.docType}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: teacher, field: 'mobilePhone', 'error')} required">
	<label for="mobilePhone">
		<g:message code="teacher.mobilePhone.label" default="Mobile Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="mobilePhone" required="" value="${teacher?.mobilePhone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: teacher, field: 'notifications', 'error')} ">
	<label for="notifications">
		<g:message code="teacher.notifications.label" default="Notifications" />
		
	</label>
	<g:select name="notifications" from="${wc.domain.Notification.list()}" multiple="multiple" optionKey="id" size="5" value="${teacher?.notifications*.id}" class="many-to-many"/>
</div>

