//
//  LabelService.swift
//  MyDITestApp
//
//  Created by Mikael Olsson on 2019-03-31.
//  Copyright © 2019 Mikael Olsson. All rights reserved.
//

import Foundation

protocol LabelService {
    
    func getLabelText(_ inText : String) -> String // _ <- Label not required when called
    
    func getLabeTextWithTimestamp(_ inText : String) -> String // _ <- Label not required when called
    
}
