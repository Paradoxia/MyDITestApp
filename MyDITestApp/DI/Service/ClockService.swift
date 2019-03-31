//
//  ClockService.swift
//  MyDITestApp
//
//  Created by Mikael Olsson on 2019-03-31.
//  Copyright © 2019 Mikael Olsson. All rights reserved.
//

import Foundation

protocol ClockService {
   
    func getCurrentDate() -> Date
    
}

extension ClockService {
   
    func getCurrentDate() -> Date {
        return Date()
    }
    
}
