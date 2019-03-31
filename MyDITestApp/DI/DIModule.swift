//
//  DIModule.swift
//  MyDITestApp
//
//  Created by Mikael Olsson on 2019-03-31.
//  Copyright © 2019 Mikael Olsson. All rights reserved.
//

import Foundation
import Swinject

class DIModule : Assembly  {
    
    func assemble(container: Container) {
        
        container.register(ClockService.self) { _ in
            return ClockProvider()
        }
        
        container.register(TimestampService.self) { resolver in
            return TimestampProvider(clockService: resolver.resolve(ClockService.self)!)
        }
        
        container.register(LabelService.self) { resolver in
            return LabelProvider(timestampService: resolver.resolve(TimestampService.self)!)
        }
        
    }
 
}
