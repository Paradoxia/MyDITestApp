//
//  MyDITestAppTests.swift
//  MyDITestAppTests
//
//  Created by Mikael Olsson on 2019-03-31.
//  Copyright © 2019 Mikael Olsson. All rights reserved.
//

import XCTest
import Swinject
@testable import MyDITestApp

class TimestampServiceTests: XCTestCase {
    
    func testShouldGetDesiredTimestamp() {
        
        let mockDate = MockHelper.createMockDate(2019, 1, 2, 3, 4, 5)
        let mockedClockService = MockHelper.MockClockProvider(mockDate)
        
        let timestampProvider = TimestampProvider(clockService: mockedClockService)

        let abcText = timestampProvider.getTimestampAsText()
        XCTAssertEqual(abcText,"2019-01-02 03:04:05")
        
    }

}
