package com.teachscape

import static org.junit.Assert.*
import org.junit.*

class LastVisitedServiceTests {

    def lastVisitedService

    @Before
    void setUp() {
        lastVisitedService = new LastVisitedService()
    }

    @After
    void tearDown() {
    }

    @Test
    void testDaysBetween() {
        def today = new Date()
        def anotherDay = today - 5;

        println lastVisitedService.daysBetween(anotherDay, today)
        assert (lastVisitedService.daysBetween(anotherDay, today) == 5)
    }
}
