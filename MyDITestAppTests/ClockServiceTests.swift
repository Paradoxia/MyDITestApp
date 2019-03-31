//
//  ClockServiceTests.swift
//  MyDITestAppTests
//
//  Created by Mikael Olsson on 2019-03-31.
//  Copyright © 2019 Mikael Olsson. All rights reserved.
//

import XCTest
import Swinject
@testable import MyDITestApp

class ClockServiceTests: XCTestCase {


    func testShouldGetADate() {
        
        let resolver = Assembler([DIModule()]).resolver
        let clockService = resolver.resolve(ClockService.self)
        
        let date = clockService?.getCurrentDate()
        XCTAssertNotNil(date)
        
    }

}
