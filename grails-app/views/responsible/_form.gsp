<%@ page import="wc.domain.Responsible" %>



<div class="fieldcontain ${hasErrors(bean: responsible, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="responsible.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${responsible?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: responsible, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="responsible.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" pattern="${responsible.constraints.firstName.matches}" required="" value="${responsible?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: responsible, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="responsible.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" pattern="${responsible.constraints.lastName.matches}" required="" value="${responsible?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: responsible, field: 'homePhone', 'error')} required">
	<label for="homePhone">
		<g:message code="responsible.homePhone.label" default="Home Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="homePhone" pattern="${responsible.constraints.homePhone.matches}" required="" value="${responsible?.homePhone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: responsible, field: 'sex', 'error')} required">
	<label for="sex">
		<g:message code="responsible.sex.label" default="Sex" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="sex" from="${responsible.constraints.sex.inList}" required="" value="${responsible?.sex}" valueMessagePrefix="responsible.sex"/>
</div>

<div class="fieldcontain ${hasErrors(bean: responsible, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="responsible.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address" required="" value="${responsible?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: responsible, field: 'birthDate', 'error')} required">
	<label for="birthDate">
		<g:message code="responsible.birthDate.label" default="Birth Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="birthDate" precision="day"  value="${responsible?.birthDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: responsible, field: 'docNumber', 'error')} required">
	<label for="docNumber">
		<g:message code="responsible.docNumber.label" default="Doc Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="docNumber" required="" value="${fieldValue(bean: responsible, field: 'docNumber')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: responsible, field: 'docType', 'error')} required">
	<label for="docType">
		<g:message code="responsible.docType.label" default="Doc Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="docType" required="" value="${responsible?.docType}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: responsible, field: 'mobilePhone', 'error')} required">
	<label for="mobilePhone">
		<g:message code="responsible.mobilePhone.label" default="Mobile Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="mobilePhone" required="" value="${responsible?.mobilePhone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: responsible, field: 'notifications', 'error')} ">
	<label for="notifications">
		<g:message code="responsible.notifications.label" default="Notifications" />
		
	</label>
	<g:select name="notifications" from="${wc.domain.Notification.list()}" multiple="multiple" optionKey="id" size="5" value="${responsible?.notifications*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: responsible, field: 'students', 'error')} ">
	<label for="students">
		<g:message code="responsible.students.label" default="Students" />
		
	</label>
	
</div>

