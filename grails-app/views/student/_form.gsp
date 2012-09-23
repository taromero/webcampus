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

<div class="fieldcontain ${hasErrors(bean: student, field: 'birthDate', 'error')} required">
	<label for="birthDate">
		<g:message code="student.birthDate.label" default="Birth Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="birthDate" precision="day"  value="${student?.birthDate}"  />
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

<div class="fieldcontain ${hasErrors(bean: student, field: 'mobilePhone', 'error')} required">
	<label for="mobilePhone">
		<g:message code="student.mobilePhone.label" default="Mobile Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="mobilePhone" required="" value="${student?.mobilePhone}"/>
</div>