package com.teachscape

import static org.junit.Assert.*
import org.junit.*
import org.springframework.core.io.ClassPathResource
import org.springframework.core.io.Resource

class CsvParseServiceTests {

    def csvParseService
    def file

    @Before
    void setUp() {
        csvParseService = new CsvParseService()
        getCSVFile()
    }

    @After
    void tearDown() {
        csvParseService = null
        file = null
    }

    @Test
    void testBaseCase() {
        String date = "12/12/12"
        assert csvParseService.fixDate(date)
    }

    @Test
    void testFixDateFourDigit() {
        String date = "12/12/2012"
        assert csvParseService.fixDate(date)
    }


    private void getCSVFile() {
        Resource resource = new ClassPathResource("contacts.csv")
        file = resource.getFile()
        assert file.exists()
    }

    @Test
    void testParseCSVFile() {
        assert csvParseService.parseCSVFile(file)
    }

}
