//
//  TestDIModule.swift
//  MyDITestAppTests
//
//  Created by Mikael Olsson on 2019-03-31.
//  Copyright © 2019 Mikael Olsson. All rights reserved.
//

import Foundation
import Swinject

/*
    Custom DIModule where we can add our own mocked ClockServices
*/
class TestDIModule : Assembly  {
    
    let mockedClockService : ClockService
    
    init(clockService : ClockService) {
        self.mockedClockService = clockService
    }
    
    func assemble(container: Container) {
        
        container.register(ClockService.self) { _ in
            return self.mockedClockService
        }
        
        container.register(TimestampService.self) { resolver in
            return TimestampProvider(clockService: resolver.resolve(ClockService.self)!)
        }
        
        container.register(LabelService.self) { resolver in
            return LabelProvider(timestampService: resolver.resolve(TimestampService.self)!)
        }
        
    }
    
}
