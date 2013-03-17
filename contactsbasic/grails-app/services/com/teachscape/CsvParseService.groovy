package com.teachscape

class CsvParseService {

    def parseCSVFile(File file) {
        def allLines = file.readLines()

        int currentIndex = 0, tokenNameIndex, tokenUserIdIndex, tokenTitleIndex, tokenMemberIdIndex, tokenCompanyIndex,
            tokenJoinedGroupOnIndex, tokenLastVisitedGroupOnIndex, tokenLastAttendedIndex, tokenTotalRsvpIndex,
            tokenRsvpYesIndex, tokenRsvpMaybeIndex, tokenRsvpNoIndex, tokenMeetupsAttendedIndex, tokenNoShowsIndex,
            tokenIntroIndex, tokenPhotoIndex, tokenAssistantOrganizerIndex, tokenMailingListIndex, tokenUrlIndex

        // First I want to take out the first line and make sure I am mapping the correct fields
        def tempLines = []
        tempLines.add(allLines.get(0))
        assert tempLines.size() == 1

        tempLines.each { it ->
             it.eachCsvLine { tokens ->
                 tokens.each {
                     log.info it

                         def result
                         switch (it.toLowerCase()) {
                             case 'name':
                                tokenNameIndex = currentIndex
                                break
                             case 'user id':
                                tokenUserIdIndex = currentIndex
                                break
                             case 'title':
                                 tokenTitleIndex = currentIndex
                                 break
                             case 'member id':
                                tokenMemberIdIndex = currentIndex
                                break
                             case 'company':
                                tokenCompanyIndex = currentIndex
                                break
                             case 'joined group on':
                                tokenJoinedGroupOnIndex = currentIndex
                                break
                             case 'last visited group on':
                                tokenLastVisitedGroupOnIndex = currentIndex
                                break
                             case 'last attended':
                                tokenLastAttendedIndex = currentIndex
                                break
                             case 'total rsvps':
                                tokenTotalRsvpIndex = currentIndex
                                break
                             case 'rsvped yes':
                                tokenRsvpYesIndex = currentIndex
                                break
                             case 'rsvped no':
                                tokenRsvpNoIndex = currentIndex
                                break
                             case 'rsvped maybe':
                                 tokenRsvpMaybeIndex = currentIndex
                                 break
                             case 'meetups attended':
                                 tokenMeetupsAttendedIndex = currentIndex
                                 break
                             case 'no shows':
                                 tokenNoShowsIndex = currentIndex
                                 break
                             case 'intro':
                                 tokenIntroIndex = currentIndex
                                 break
                             case 'photo':
                                 tokenPhotoIndex = currentIndex
                                 break
                             case 'assistant organizer':
                                 tokenAssistantOrganizerIndex = currentIndex
                                 break
                             case 'mailing list':
                                 tokenMailingListIndex = currentIndex
                                 break
                             case 'url of member profile':
                                 tokenUrlIndex = currentIndex
                                 break

                         }
                     currentIndex++

                 }
             }
        }

        allLines.remove(0)

        allLines.each() {

            def loadContactCommand = new LoadContactCommand()

            it.eachCsvLine { tokens ->
                loadContactCommand.name = tokens[tokenNameIndex]
                loadContactCommand.userId = tokens[tokenUserIdIndex]
                loadContactCommand.title = tokens[tokenTitleIndex]
                loadContactCommand.memberIdString = tokens[tokenMemberIdIndex]
                loadContactCommand.companyString = tokens[tokenCompanyIndex]
                loadContactCommand.joinedGroupOnString = tokens[tokenJoinedGroupOnIndex]
                loadContactCommand.lastVisitedGroupOnString = tokens[tokenLastVisitedGroupOnIndex]
                loadContactCommand.lastAttendedString = tokens[tokenLastAttendedIndex]
                loadContactCommand.rsvpCountString = tokens[tokenTotalRsvpIndex]
                loadContactCommand.rsvpYesString = tokens[tokenRsvpYesIndex]
                loadContactCommand.rsvpMaybeString = tokens[tokenRsvpMaybeIndex]
                loadContactCommand.rsvpNoString = tokens[tokenRsvpNoIndex]
                loadContactCommand.meetupsAttendedString = tokens[tokenMeetupsAttendedIndex]
                loadContactCommand.noShowsString = tokens[tokenNoShowsIndex]
                loadContactCommand.intro = tokens[tokenIntroIndex]
                loadContactCommand.photo = tokens[tokenPhotoIndex]
                loadContactCommand.assistantOrganizer = tokens[tokenAssistantOrganizerIndex]
                loadContactCommand.mailingList = tokens[tokenMailingListIndex]
                loadContactCommand.url = tokens[tokenUrlIndex]

                log.info loadContactCommand.properties
            }
            // translate LoadContactCommand object params properly

            loadContactCommand.memberId = new Long(loadContactCommand.memberIdString)

            loadContactCommand.rsvpMaybe = new Integer(loadContactCommand.rsvpMaybeString)
            loadContactCommand.rsvpNo = new Integer(loadContactCommand.rsvpNoString)
            loadContactCommand.rsvpYes = new Integer(loadContactCommand.rsvpYesString)
            loadContactCommand.rsvpCount = new Integer(loadContactCommand.rsvpCountString)

            loadContactCommand.meetupsAttended = new Integer(loadContactCommand.meetupsAttendedString)
            loadContactCommand.noShows = new Integer(loadContactCommand.noShowsString)

            loadContactCommand.joinedGroupOn = fixDate(loadContactCommand.joinedGroupOnString)
            loadContactCommand.lastAttended = fixDate(loadContactCommand.lastAttendedString)
            loadContactCommand.lastVisitedGroupOn = fixDate(loadContactCommand.lastVisitedGroupOnString)

            // create company object if it does not already exist
            def companyInstance = Company.findByName(loadContactCommand.companyString)
            if (!companyInstance) {
                companyInstance = new Company()
                companyInstance.name = loadContactCommand.companyString
                companyInstance.save(flush: true)
            }
            // set company object
            loadContactCommand.company = companyInstance

            log.info loadContactCommand.properties

            // create new Contact domain object and persist
           def contactInstance = new Contact()
            contactInstance.properties = loadContactCommand.properties
            contactInstance.save(flush: true)
            log.info contactInstance.errors
        }
    }

    def Date fixDate(String date) {
         // First parse the DD/MM/YYYY  if it is only DD/MM/YY then translate it to DD/MM/YYYY

        if (date == null || date.equals("")) return null

         def splitDate = []
         splitDate = date.trim().split('/')
         def day = splitDate[0]
         log.info "this is hte date : " + day
         def month = splitDate[1]
         log.info "this is hte month : " + month
         def year = splitDate[2]
         log.info "this is hte year : " + year
         def updatedYear = new Integer(year)

         // Meetup started in 2003 so just add 2000 so as to normalize.  easy algorithm
         if (updatedYear < 2003) {
             updatedYear += 2000
         }
        updatedYear -= 1900

        def updatedDate = new Date()
        updatedDate.setYear(updatedYear)
        updatedDate.setMonth(new Integer(month).toInteger() - 1)
        updatedDate.setDate(new Integer(day))
        updatedDate.setHours(0)
        updatedDate.setMinutes(0)
        updatedDate.setSeconds(0)

        log.info updatedDate

        return updatedDate
    }
}