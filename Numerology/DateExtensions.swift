//
//  DateExtensions.swift
//  Numerology
//
//  Created by Mark Hamilton on 5/13/19.
//  Copyright © 2019 Mark Hamilton. All rights reserved.
//

import Foundation

public enum DateError : Error {
    case invalidYear
    case invalidMonth
    case invalidDay
    case invalidDate
}

public extension Date {
    
    init?(month: Int, day: Int, year: Int) throws {
        
        if (year < 1) {
        throw DateError.invalidYear
        }
        else if (day < 1  || day > 31) {
            throw DateError.invalidDay
        }
        else if (month < 1 || month > 12) {
            throw DateError.invalidMonth
        }
        
        let components = DateComponents(calendar: nil,
        timeZone: nil,
        era: nil,
        year: year,
        month: month,
        day: day,
        hour: nil,
        minute: nil,
        second: nil,
        nanosecond: nil,
        weekday: nil,
        weekdayOrdinal: nil,
        quarter: nil,
        weekOfMonth: nil,
        weekOfYear: nil,
        yearForWeekOfYear: nil)
        
        guard let date : Date = Calendar.current.date(from: components) else {
            throw DateError.invalidDate
        }
        
        self = date
    }
    
    func string(format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
    
    var dayOfYear: Int {
        return Calendar.current.ordinality(of: .day, in: .year, for: self)!
    }
    
    var daysLeftInYear: Int {
        return self.isLeapYear ? 366 - self.dayOfYear : 365 - self.dayOfYear
    }
    
    var isLeapYear : Bool {
        let components = Calendar.current.dateComponents([.year], from: self as Date)
        let isLeapYear = ((components.year! % 4 == 0) && (components.year! % 100 != 0) || (components.year! % 400 == 0))
        return isLeapYear
    }
    
    var md : DateComponents {
        return Calendar.current.dateComponents([.day, .month], from: self as Date)
    }
    
    var mdy : DateComponents {
        return Calendar.current.dateComponents([.day, .month, .year], from: self as Date)
    }
    
    // Example 11/11/2019: 11 + 11 + 20 + 19
    var fullNumerology : Int {
        let yearArr = self.mdy.year!.digits
        let firstHalf = String(yearArr[0]) + (self.mdy.year! > 9 ? String(yearArr[1]) : "")
        let secondHalf = String(self.mdy.year! > 99 ? String(yearArr[2]) : "") + (self.mdy.year! > 999 ? String(yearArr[3]) : "")
        
        return self.mdy.day! + self.mdy.month! + Int(firstHalf)! + (!secondHalf.isEmpty ? Int(secondHalf)! : 0)
    }
    
    // Example 11/11/2019: 1+1 + 1+1 + 2+0+1+9
    var fullExpandedNumerology : Int {
        return self.mdy.day!.reduction + self.mdy.month!.reduction + self.mdy.year!.reduction
    }
    
    // Example 11/11/2019: 1+1 + 1+1 + 20 + 19
    var monthDayExpandedFullNumerology : Int {
        let yearArr = self.mdy.year!.digits
        let firstHalf = String(yearArr[0]) + (self.mdy.year! > 9 ? String(yearArr[1]) : "")
        let secondHalf = String(self.mdy.year! > 99 ? String(yearArr[2]) : "") + (self.mdy.year! > 999 ? String(yearArr[3]) : "")
        
        return self.mdy.day!.reduction + self.mdy.month!.reduction + Int(firstHalf)! + (!secondHalf.isEmpty ? Int(secondHalf)! : 0)
    }
    
    // Example 11/11/2019: 11 + 11 + 2+0+1+9
    var fullYearExpandedNumerology : Int {
        return self.mdy.day! + self.mdy.month! + self.mdy.year!.reduction
    }
    
    // Example 11/11/2019: 11 + 11 + 19
    var shortNumerology : Int {
        return self.md.day! + self.md.month! + Int(self.string(format: "yy"))!
    }
    
    // Example 11/11/2019: 11 + 11 + 1+9
    var shortYearExpandedNumerology : Int {
        return self.md.day! + self.md.month! + Int(self.string(format: "yy"))!.reduction
    }
    
    // Example 11/11/2019: 1+1 + 1+1 + 1+9
    var shortExpandedNumerology : Int {
        return self.md.day!.reduction + self.md.month!.reduction + Int(self.string(format: "yy"))!.reduction
    }
    
    // Example 11/11/2019: 11 + 11
    var monthDayNumerology : Int {
        return self.md.day! + self.md.month!
    }
    
    // Example 11/11/2019: 1+1 + 1+1
    var monthDayExpandedNumerology : Int {
        return self.md.day!.reduction + self.md.month!.reduction
    }
    
    var expandedMultipliedNumerology : Int {
        return 1.multiplyBy(array: self.mdy.day!.digits + self.mdy.month!.digits + self.mdy.year!.digits, zeros: false)
    }
    
    var shortExpandedMultipliedNumerology : Int {
        return 1.multiplyBy(array: (self.mdy.month!.digits + self.mdy.day!.digits + Int(self.string(format: "yy"))!.digits), zeros: false)
    }
    
    
}
