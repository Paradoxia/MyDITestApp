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

class LabelServiceTests: XCTestCase {
    
    func testShouldGetTextABC() {
        
        let resolver = Assembler([DIModule()]).resolver
        let labelService = resolver.resolve(LabelService.self)
        
        let abcText = labelService?.getLabelText("abc")
        XCTAssertEqual(abcText,"abc")
        
    }
    
    /*
        In this example we are calling "getLabeTextWithTimestamp" that combines the
        input text with the current timestamp. But since we need to control the
        output we use our own DIModule (TestDIModule).
    */
    func testShouldGetTextABCWithTimestamp() {

        let mockDate = MockHelper.createMockDate(2019, 5, 6, 12, 10, 25)
        let mockedClockService = MockHelper.MockClockProvider(mockDate)
        
        let resolver = Assembler([TestDIModule(clockService : mockedClockService)]).resolver
        let labelService = resolver.resolve(LabelService.self)

        let abcTextWithTimestamp = labelService?.getLabeTextWithTimestamp("abc")
        XCTAssertEqual(abcTextWithTimestamp,"abc 2019-05-06 12:10:25")
        
    }

}
