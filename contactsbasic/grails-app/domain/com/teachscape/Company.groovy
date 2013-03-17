package com.teachscape

class Company {

    static hasMany = [contacts: Contact]
    String name

    static constraints = {
        name(nullable: false, blank: false, unique: true)
    }

    String toString() {
        "${name}"
    }
}
