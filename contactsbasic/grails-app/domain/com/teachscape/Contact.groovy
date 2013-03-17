package com.teachscape

class Contact {

    Company company

    String name
    String userId
    String title
    long memberId

    Date joinedGroupOn
    Date lastVisitedGroupOn
    Date lastAttended
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

    static constraints = {
        name(blank: false, nullable: false)
        userId(blank: false, nullable: false)
        title(blank: true, nullable: true)
        memberId()
        company(nullable: true)
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
    }

    String toString() { "${name}"}
}
