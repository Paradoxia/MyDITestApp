//
//  MockHelper.swift
//  MyDITestAppTests
//
//  Created by Mikael Olsson on 2019-03-31.
//  Copyright © 2019 Mikael Olsson. All rights reserved.
//

import Foundation

class MockHelper {

    // Need to control the test environment and the current date used
    // in our test below. So here we write our own mocked ClockService
    // where we can add our own Date.
    struct MockClockProvider : ClockService {
        let mockDate : Date
        init(_ date : Date) {
            self.mockDate = date
        }
        func getCurrentDate() -> Date {
            return self.mockDate
        }
    }
    
    // Utility method that construct a Date instance based on input parameters
    static func createMockDate(_ year : Int,_ month : Int,_ day : Int,_ hour : Int,_ min : Int,_ sec : Int) -> Date {
        
        var dateComponents = DateComponents()
        dateComponents.year = year
        dateComponents.month = month
        dateComponents.day = day
        dateComponents.hour = hour
        dateComponents.minute = min
        dateComponents.second = sec
        let userCalendar = Calendar.current // user calendar
        return userCalendar.date(from: dateComponents)!
        
    }
    
}
