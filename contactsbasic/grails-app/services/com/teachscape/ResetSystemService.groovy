package com.teachscape

class ResetSystemService {

    def cleanSystem() {
        // Note: this is not quite transactional.  it's just used for coding challenge purposes, but is not the fully transactional way to do things
        def contactList = Contact.getAll()
        def companyList = Company.getAll()

        contactList.each {
            it.delete(flush: true)
        }

        companyList.each {
            it.delete(flush: true)
        }
    }
}
