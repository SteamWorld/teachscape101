package com.teachscape



import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Company)
class CompanyTests {

    void testCompanyCreate() {
        mockDomain(Company)
        def company = new Company()
        assertTrue company != null
    }

    void testCompanyValidation() {
        mockDomain(Company)
        def company = new Company(name: "Company Name")
        assertTrue 'validation should have passed', company.validate()
    }

    void testCompanyNullNameValue() {
        mockDomain(Company)
        def company = new Company()
        assertFalse 'validation should have failed', company.validate()
    }

    void testCompanyEmptyNameValue() {
        mockDomain(Company)
        def company = new Company(name: "")
        assertFalse 'validation should have failed', company.validate()
    }

    void testCompanyFalseProperty() {
        mockDomain(Company)
        def company = new Company(blah: "Company Name")
        assertFalse 'validation should have failed', company.validate()
    }

}
