//
//  NumerologyTests.swift
//  NumerologyTests
//
//  Created by Mark Hamilton on 5/13/19.
//  Copyright © 2019 Mark Hamilton. All rights reserved.
//

import XCTest
@testable import Numerology

class NumerologyTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testLeapYear() {
        try XCTAssertEqual(Date.init(month: 1, day: 1, year: 2000)!.isLeapYear, true)
    }
    
    func testNonLeapYear() {
        try XCTAssertEqual(Date.init(month: 1, day: 1, year: 2019)!.isLeapYear, false)
    }
    
    func testDayOfYear() {
        try XCTAssertEqual(Date.init(month: 11, day: 10, year: 2019)!.dayOfYear, 314)
    }
    
    func testDaysLeftInYear() {
        try XCTAssertEqual(Date.init(month: 11, day: 10, year: 2019)!.daysLeftInYear, 51)
    }
    
    func testFullNumerology() {
        try XCTAssertEqual(Date.init(month: 11, day: 11, year: 2019)!.fullNumerology, 61)
    }
    
    func testFullExpandedNumerology() {
        try XCTAssertEqual(Date.init(month: 11, day: 11, year: 2019)!.fullExpandedNumerology, 16)
    }
    
    func testFullYearExpandedNumerology() {
        try XCTAssertEqual(Date.init(month: 11, day: 11, year: 2019)!.fullYearExpandedNumerology, 34)
    }
    
    func testMonthDayExpandedFullNumerology() {
        try XCTAssertEqual(Date.init(month: 11, day: 11, year: 2019)!.monthDayExpandedFullNumerology, 43)
    }
    
    func testShortNumerology() {
        try XCTAssertEqual(Date.init(month: 11, day: 11, year: 2019)!.shortNumerology, 41)
    }
    
    func testShortExpandedNumerology() {
        try XCTAssertEqual(Date.init(month: 11, day: 11, year: 2019)!.shortExpandedNumerology, 14)
    }
    
    func testShortYearExpandedNumerology() {
        try XCTAssertEqual(Date.init(month: 11, day: 11, year: 2019)!.shortYearExpandedNumerology, 32)
    }
    
    func testMonthDayNumerology() {
        try XCTAssertEqual(Date.init(month: 11, day: 11, year: 2019)!.monthDayNumerology, 22)
    }
    
    func testMonthDayExpandedNumerology() {
        try XCTAssertEqual(Date.init(month: 11, day: 11, year: 2019)!.monthDayExpandedNumerology, 4)
    }
    
    func testExpandedMultipliedNumerology() {
        try XCTAssertEqual(Date.init(month: 11, day: 10, year: 2019)!.expandedMultipliedNumerology, 18)
    }
    
    func testShortExpandedMultipliedNumerology() {
        try XCTAssertEqual(Date.init(month: 11, day: 10, year: 2019)!.shortExpandedMultipliedNumerology, 9)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
