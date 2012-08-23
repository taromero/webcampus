<%@ page import="wc.domain.Notification" %>



<div class="fieldcontain ${hasErrors(bean: notification, field: 'emmisionDate', 'error')} required">
	<label for="emmisionDate">
		<g:message code="notification.emmisionDate.label" default="Emmision Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="emmisionDate" precision="day"  value="${notification?.emmisionDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: notification, field: 'message', 'error')} required">
	<label for="message">
		<g:message code="notification.message.label" default="Message" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="message" required="" value="${notification?.message}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: notification, field: 'relevance', 'error')} required">
	<label for="relevance">
		<g:message code="notification.relevance.label" default="Relevance" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="relevance" required="" value="${fieldValue(bean: notification, field: 'relevance')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: notification, field: 'relevantUntil', 'error')} required">
	<label for="relevantUntil">
		<g:message code="notification.relevantUntil.label" default="Relevant Until" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="relevantUntil" precision="day"  value="${notification?.relevantUntil}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: notification, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="notification.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${notification?.title}"/>
</div>

