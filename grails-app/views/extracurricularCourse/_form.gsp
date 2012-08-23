<%@ page import="wc.domain.ExtracurricularCourse" %>



<div class="fieldcontain ${hasErrors(bean: extracurricularCourse, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="extracurricularCourse.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${extracurricularCourse?.name}"/>
</div>

