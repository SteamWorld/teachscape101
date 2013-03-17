package com.teachscape

class LastVisitedService {

    public def getContactsNotVisitedLately() {
        def contactList = Contact.getAll();
        def today = new Date()

        // TODO: need to create object that will store contacts that haven't visited in 90 days
        def contactListNotVisitedLately = []

        //println "*************************** " + c
        contactList.each {
           if (daysBetween(it.lastAttended, today) > 90) {
               print "wokka wokka!" + " " + it
               contactListNotVisitedLately.add(it)
           }
        }
        contactListNotVisitedLately
    }
    public def daysBetween(def startDate, def endDate) {
        if (startDate == null ) startDate = endDate
        use(groovy.time.TimeCategory) {
            def duration = endDate - startDate
            return duration.days
        }
    }
}
