package com.teachscape



import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Contact)
class ContactTests {

    void testContactCreate() {
        mockDomain(Contact)
        def contact = new Contact()
        assertTrue contact != null
    }

    void testContactValidationPass() {
        mockDomain(Contact)
        def contact = new Contact(name: "Contact Name", userId: "User Id", title: "", memberId: "11111", joinedGroupOn: new Date(),
                                    lastVisitedGroupOn: new Date(), lastAttended: new Date(), rsvpCount: 5, rsvpYes: 5, rsvpMaybe: 5,
                                    rsvpNo: 5, meetupsAttended: 5, noShows: 5, intro: "Yes", photo: "Yes", assistantOrganizer: "Yes", mailingList: "Yes",
                                    url: "http://www.google.com")
        assertTrue 'validation should have passed', contact.validate()
    }

    void testContactValidationFail() {
        mockDomain(Contact)
        def contact = new Contact(name:  "")
        assertFalse 'validation should have failed', contact.validate()
    }

    // add more unit tests to test more on the validation
}
