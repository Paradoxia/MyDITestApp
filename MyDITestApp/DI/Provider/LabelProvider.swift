//
//  LabelProvider.swift
//  MyDITestApp
//
//  Created by Mikael Olsson on 2019-03-31.
//  Copyright © 2019 Mikael Olsson. All rights reserved.
//

import Foundation

struct LabelProvider : LabelService {  // struct = unique allocation of variables
   
    let timestampService : TimestampService // is set in "init"
    
    init(timestampService : TimestampService) {
        self.timestampService = timestampService
    }
    
    func getLabeTextWithTimestamp(_ inText: String) -> String {
        return "\(inText) \(timestampService.getTimestampAsText())"
    }
  
    func getLabelText(_ inText: String) -> String {
        return inText
    }
    
}
