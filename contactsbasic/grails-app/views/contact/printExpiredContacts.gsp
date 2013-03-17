
<%@ page import="com.teachscape.Contact" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'contact.label', default: 'Contact')}" />
    <title><g:message code="default.printExpiredContacts.label" args="[entityName]" /></title>
</head>
<body>
<a href="#list-contact" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/start/web/index.html')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
        <li><g:link class="list" controller="company" action="list">Company List</g:link></li>

    </ul>
</div>

<div id="list-contact" class="content scaffold-list" role="main">
    <h1><g:message code="default.printExpiredContacts.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="name" title="${message(code: 'contact.name.label', default: 'Name')}" />

            <!--
            <g:sortableColumn property="userId" title="${message(code: 'contact.userId.label', default: 'User Id')}" />

            <g:sortableColumn property="title" title="${message(code: 'contact.title.label', default: 'Title')}" />
            <g:sortableColumn property="memberId" title="${message(code: 'contact.memberId.label', default: 'Member Id')}" />

            <g:sortableColumn property="assistantOrganizer" title="${message(code: 'contact.assistantOrganizer.label', default: 'Assistant Organizer')}" /><g:sortableColumn property="url" title="${message(code: 'contact.url.label', default: 'Url')}" />


            <th><g:message code="contact.company.label" default="Company" /></th>

            <g:sortableColumn property="joinedGroupOn" title="${message(code: 'contact.joinedGroupOn.label', default: 'Joined Group On')}" />

            <g:sortableColumn property="lastVisitedGroupOn" title="${message(code: 'contact.lastVisitedGroupOn.label', default: 'Last Visited Group On')}" />
                      -->
            <g:sortableColumn property="lastAttended" title="${message(code: 'contact.lastAttended.label', default: 'Last Attended')}" />
                      <!--
            <g:sortableColumn property="rsvpCount" title="${message(code: 'contact.rsvpCount.label', default: 'Rsvp Count')}" />

            <g:sortableColumn property="rsvpYes" title="${message(code: 'contact.rsvpYes.label', default: 'Rsvp Yes')}" />

            <g:sortableColumn property="rsvpMaybe" title="${message(code: 'contact.rsvpMaybe.label', default: 'Rsvp Maybe')}" />

            <g:sortableColumn property="rsvpNo" title="${message(code: 'contact.rsvpNo.label', default: 'Rsvp No')}" />

            <g:sortableColumn property="meetupsAttended" title="${message(code: 'contact.meetupsAttended.label', default: 'Attended')}" />

            <g:sortableColumn property="noShows" title="${message(code: 'contact.noShows.label', default: 'No Shows')}" />

            <g:sortableColumn property="intro" title="${message(code: 'contact.intro.label', default: 'Intro')}" />

            <g:sortableColumn property="photo" title="${message(code: 'contact.photo.label', default: 'Photo')}" />

                        -->

        </tr>
        </thead>
        <tbody>
        <g:each in="${contactInstanceList}" status="i" var="contactInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td>${fieldValue(bean: contactInstance, field: "title")} <g:link action="show" id="${contactInstance.id}">${fieldValue(bean: contactInstance, field: "name")}</g:link></td>
                <!--
                <td>${fieldValue(bean: contactInstance, field: "userId")}</td>


						<td>${fieldValue(bean: contactInstance, field: "title")}</td>


                <td>${fieldValue(bean: contactInstance, field: "memberId")}</td>

                <td>${fieldValue(bean: contactInstance, field: "assistantOrganizer")}</td>


						<td>${fieldValue(bean: contactInstance, field: "url")}</td>


                <td>${fieldValue(bean: contactInstance, field: "company")}</td>

                <td><g:formatDate date="${contactInstance.joinedGroupOn}" /></td>

                <td><g:formatDate date="${contactInstance.lastVisitedGroupOn}" /></td>
                                -->
                <td><g:formatDate date="${contactInstance.lastAttended}" /></td>
                                  <!--
                <td>${fieldValue(bean: contactInstance, field: "rsvpCount")}</td>

                <td>${fieldValue(bean: contactInstance, field: "rsvpYes")}</td>

                <td>${fieldValue(bean: contactInstance, field: "rsvpMaybe")}</td>

                <td>${fieldValue(bean: contactInstance, field: "rsvpNo")}</td>

                <td>${fieldValue(bean: contactInstance, field: "meetupsAttended")}</td>

                <td>${fieldValue(bean: contactInstance, field: "noShows")}</td>

                <td>${fieldValue(bean: contactInstance, field: "intro")}</td>

                <td>${fieldValue(bean: contactInstance, field: "photo")}</td>
                                  -->

            </tr>
        </g:each>
        </tbody>
    </table>
    <div class="pagination">
        <g:paginate total="${contactInstanceTotal}" />
    </div>
</div>

<!--
<div style="margin-left: 20px">
    <g:uploadForm action="upload">
        <input type="file" name="myFile" />
        <input type="submit" value="Upload"/>
    </g:uploadForm>
</div>
-->
</body>
</html>
