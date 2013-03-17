
<%@ page import="com.teachscape.Contact" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'contact.label', default: 'Contact')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-contact" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-contact" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list contact">
			
				<g:if test="${contactInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="contact.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${contactInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInstance?.userId}">
				<li class="fieldcontain">
					<span id="userId-label" class="property-label"><g:message code="contact.userId.label" default="User Id" /></span>
					
						<span class="property-value" aria-labelledby="userId-label"><g:fieldValue bean="${contactInstance}" field="userId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="contact.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${contactInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInstance?.memberId}">
				<li class="fieldcontain">
					<span id="memberId-label" class="property-label"><g:message code="contact.memberId.label" default="Member Id" /></span>
					
						<span class="property-value" aria-labelledby="memberId-label"><g:fieldValue bean="${contactInstance}" field="memberId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInstance?.joinedGroupOn}">
				<li class="fieldcontain">
					<span id="joinedGroupOn-label" class="property-label"><g:message code="contact.joinedGroupOn.label" default="Joined Group On" /></span>
					
						<span class="property-value" aria-labelledby="joinedGroupOn-label"><g:formatDate date="${contactInstance?.joinedGroupOn}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInstance?.lastVisitedGroupOn}">
				<li class="fieldcontain">
					<span id="lastVisitedGroupOn-label" class="property-label"><g:message code="contact.lastVisitedGroupOn.label" default="Last Visited Group On" /></span>
					
						<span class="property-value" aria-labelledby="lastVisitedGroupOn-label"><g:formatDate date="${contactInstance?.lastVisitedGroupOn}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInstance?.lastAttended}">
				<li class="fieldcontain">
					<span id="lastAttended-label" class="property-label"><g:message code="contact.lastAttended.label" default="Last Attended" /></span>
					
						<span class="property-value" aria-labelledby="lastAttended-label"><g:formatDate date="${contactInstance?.lastAttended}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInstance?.rsvpCount}">
				<li class="fieldcontain">
					<span id="rsvpCount-label" class="property-label"><g:message code="contact.rsvpCount.label" default="Rsvp Count" /></span>
					
						<span class="property-value" aria-labelledby="rsvpCount-label"><g:fieldValue bean="${contactInstance}" field="rsvpCount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInstance?.rsvpYes}">
				<li class="fieldcontain">
					<span id="rsvpYes-label" class="property-label"><g:message code="contact.rsvpYes.label" default="Rsvp Yes" /></span>
					
						<span class="property-value" aria-labelledby="rsvpYes-label"><g:fieldValue bean="${contactInstance}" field="rsvpYes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInstance?.rsvpMaybe}">
				<li class="fieldcontain">
					<span id="rsvpMaybe-label" class="property-label"><g:message code="contact.rsvpMaybe.label" default="Rsvp Maybe" /></span>
					
						<span class="property-value" aria-labelledby="rsvpMaybe-label"><g:fieldValue bean="${contactInstance}" field="rsvpMaybe"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInstance?.rsvpNo}">
				<li class="fieldcontain">
					<span id="rsvpNo-label" class="property-label"><g:message code="contact.rsvpNo.label" default="Rsvp No" /></span>
					
						<span class="property-value" aria-labelledby="rsvpNo-label"><g:fieldValue bean="${contactInstance}" field="rsvpNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInstance?.meetupsAttended}">
				<li class="fieldcontain">
					<span id="meetupsAttended-label" class="property-label"><g:message code="contact.meetupsAttended.label" default="Meetups Attended" /></span>
					
						<span class="property-value" aria-labelledby="meetupsAttended-label"><g:fieldValue bean="${contactInstance}" field="meetupsAttended"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInstance?.noShows}">
				<li class="fieldcontain">
					<span id="noShows-label" class="property-label"><g:message code="contact.noShows.label" default="No Shows" /></span>
					
						<span class="property-value" aria-labelledby="noShows-label"><g:fieldValue bean="${contactInstance}" field="noShows"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInstance?.intro}">
				<li class="fieldcontain">
					<span id="intro-label" class="property-label"><g:message code="contact.intro.label" default="Intro" /></span>
					
						<span class="property-value" aria-labelledby="intro-label"><g:fieldValue bean="${contactInstance}" field="intro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInstance?.photo}">
				<li class="fieldcontain">
					<span id="photo-label" class="property-label"><g:message code="contact.photo.label" default="Photo" /></span>
					
						<span class="property-value" aria-labelledby="photo-label"><g:fieldValue bean="${contactInstance}" field="photo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInstance?.assistantOrganizer}">
				<li class="fieldcontain">
					<span id="assistantOrganizer-label" class="property-label"><g:message code="contact.assistantOrganizer.label" default="Assistant Organizer" /></span>
					
						<span class="property-value" aria-labelledby="assistantOrganizer-label"><g:fieldValue bean="${contactInstance}" field="assistantOrganizer"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInstance?.url}">
				<li class="fieldcontain">
					<span id="url-label" class="property-label"><g:message code="contact.url.label" default="Url" /></span>
					
						<span class="property-value" aria-labelledby="url-label"><g:fieldValue bean="${contactInstance}" field="url"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInstance?.company}">
				<li class="fieldcontain">
					<span id="company-label" class="property-label"><g:message code="contact.company.label" default="Company" /></span>
					
						<span class="property-value" aria-labelledby="company-label"><g:link controller="company" action="show" id="${contactInstance?.company?.id}">${contactInstance?.company?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInstance?.mailingList}">
				<li class="fieldcontain">
					<span id="mailingList-label" class="property-label"><g:message code="contact.mailingList.label" default="Mailing List" /></span>
					
						<span class="property-value" aria-labelledby="mailingList-label"><g:fieldValue bean="${contactInstance}" field="mailingList"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${contactInstance?.id}" />
					<g:link class="edit" action="edit" id="${contactInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
