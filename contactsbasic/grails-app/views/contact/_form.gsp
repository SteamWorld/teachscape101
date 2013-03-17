<%@ page import="com.teachscape.Contact" %>



<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="contact.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${contactInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'userId', 'error')} required">
	<label for="userId">
		<g:message code="contact.userId.label" default="User Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userId" required="" value="${contactInstance?.userId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="contact.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${contactInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'memberId', 'error')} required">
	<label for="memberId">
		<g:message code="contact.memberId.label" default="Member Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="memberId" type="number" value="${contactInstance.memberId}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'joinedGroupOn', 'error')} required">
	<label for="joinedGroupOn">
		<g:message code="contact.joinedGroupOn.label" default="Joined Group On" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="joinedGroupOn" precision="day"  value="${contactInstance?.joinedGroupOn}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'lastVisitedGroupOn', 'error')} required">
	<label for="lastVisitedGroupOn">
		<g:message code="contact.lastVisitedGroupOn.label" default="Last Visited Group On" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="lastVisitedGroupOn" precision="day"  value="${contactInstance?.lastVisitedGroupOn}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'lastAttended', 'error')} ">
	<label for="lastAttended">
		<g:message code="contact.lastAttended.label" default="Last Attended" />
		
	</label>
	<g:datePicker name="lastAttended" precision="day"  value="${contactInstance?.lastAttended}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'rsvpCount', 'error')} required">
	<label for="rsvpCount">
		<g:message code="contact.rsvpCount.label" default="Rsvp Count" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="rsvpCount" type="number" value="${contactInstance.rsvpCount}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'rsvpYes', 'error')} required">
	<label for="rsvpYes">
		<g:message code="contact.rsvpYes.label" default="Rsvp Yes" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="rsvpYes" type="number" value="${contactInstance.rsvpYes}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'rsvpMaybe', 'error')} required">
	<label for="rsvpMaybe">
		<g:message code="contact.rsvpMaybe.label" default="Rsvp Maybe" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="rsvpMaybe" type="number" value="${contactInstance.rsvpMaybe}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'rsvpNo', 'error')} required">
	<label for="rsvpNo">
		<g:message code="contact.rsvpNo.label" default="Rsvp No" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="rsvpNo" type="number" value="${contactInstance.rsvpNo}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'meetupsAttended', 'error')} required">
	<label for="meetupsAttended">
		<g:message code="contact.meetupsAttended.label" default="Meetups Attended" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="meetupsAttended" type="number" value="${contactInstance.meetupsAttended}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'noShows', 'error')} required">
	<label for="noShows">
		<g:message code="contact.noShows.label" default="No Shows" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="noShows" type="number" value="${contactInstance.noShows}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'intro', 'error')} ">
	<label for="intro">
		<g:message code="contact.intro.label" default="Intro" />
		
	</label>
	<g:select name="intro" from="${contactInstance.constraints.intro.inList}" value="${contactInstance?.intro}" valueMessagePrefix="contact.intro" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'photo', 'error')} ">
	<label for="photo">
		<g:message code="contact.photo.label" default="Photo" />
		
	</label>
	<g:select name="photo" from="${contactInstance.constraints.photo.inList}" value="${contactInstance?.photo}" valueMessagePrefix="contact.photo" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'assistantOrganizer', 'error')} ">
	<label for="assistantOrganizer">
		<g:message code="contact.assistantOrganizer.label" default="Assistant Organizer" />
		
	</label>
	<g:select name="assistantOrganizer" from="${contactInstance.constraints.assistantOrganizer.inList}" value="${contactInstance?.assistantOrganizer}" valueMessagePrefix="contact.assistantOrganizer" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'url', 'error')} ">
	<label for="url">
		<g:message code="contact.url.label" default="Url" />
		
	</label>
	<g:field type="url" name="url" value="${contactInstance?.url}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'company', 'error')} required">
	<label for="company">
		<g:message code="contact.company.label" default="Company" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="company" name="company.id" from="${com.teachscape.Company.list()}" optionKey="id" required="" value="${contactInstance?.company?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'mailingList', 'error')} ">
	<label for="mailingList">
		<g:message code="contact.mailingList.label" default="Mailing List" />
		
	</label>
	<g:textField name="mailingList" value="${contactInstance?.mailingList}"/>
</div>

