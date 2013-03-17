package com.teachscape

/**
 * Created with IntelliJ IDEA.
 * User: javageek
 * Date: 8/21/12
 * Time: 9:37 PM
 * To change this template use File | Settings | File Templates.
 */
class LoadContactCommand {

    String name
    String userId
    String title

    /* to be translated in service class */
    String memberIdString
    long memberId

    /*   These will be translated to Date objects in a service class and loaded into the Contact domain class as such */
    String joinedGroupOnString
    String lastVisitedGroupOnString
    String lastAttendedString

    Date joinedGroupOn
    Date lastVisitedGroupOn
    Date lastAttended

    /* to be translated in service class */

    String rsvpCountString = 0
    String rsvpYesString = 0
    String rsvpMaybeString = 0
    String rsvpNoString = 0
    String meetupsAttendedString = 0
    String noShowsString = 0

    int rsvpCount = 0
    int rsvpYes = 0
    int rsvpMaybe = 0
    int rsvpNo = 0
    int meetupsAttended = 0
    int noShows = 0

    String intro
    String photo
    String assistantOrganizer
    String mailingList

    String url

    Company company
    String companyString

    static constraints = {
        name(blank: false, nullable: false)
        userId(blank: false, nullable: false)
        title(blank: true, nullable: true)
        memberId()
        company(nullable: true)
        joinedGroupOnString(nullable: true)
        lastVisitedGroupOnString(nullable: true)
        lastAttendedString(nullable: true)
        joinedGroupOn(nullable: true)
        lastVisitedGroupOn(nullable: true)
        lastAttended(nullable: true)
        rsvpCount(nullable: false)
        rsvpYes(nullable: false)
        rsvpMaybe(nullable: false)
        rsvpNo(nullable: false)
        meetupsAttended(nullable: false)
        noShows(nullable: false)
        intro(inList: ["Yes", "No"])
        photo(inList: ["Yes", "No"])
        assistantOrganizer(inList: ["Yes", "No"])
        mailingList(inList: ["Yes", "No", "Digest"])
        url(url: true, nullable: false)
        company(nullable:true)
        companyString(nullable:false)
    }
}
