//
//  TimestampProvider.swift
//  MyDITestApp
//
//  Created by Mikael Olsson on 2019-03-31.
//  Copyright © 2019 Mikael Olsson. All rights reserved.
//

import Foundation

struct TimestampProvider : TimestampService {

    let clockService : ClockService // is set in "init"
    
    init(clockService : ClockService) {
        self.clockService = clockService
    }
    
    func getTimestampAsText() -> String {
        let now = self.clockService.getCurrentDate()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return dateFormatter.string(from: now)
    }
    
}
