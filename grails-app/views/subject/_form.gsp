<%@ page import="wc.domain.Subject" %>



<div class="fieldcontain ${hasErrors(bean: subject, field: 'content', 'error')} required">
	<label for="content">
		<g:message code="subject.content.label" default="Content" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="content" required="" value="${subject?.content}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: subject, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="subject.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${subject?.title}"/>
</div>

