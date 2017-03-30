//
//  DueDateController.swift
//  DueDateCalculator
//
//  Created by Angela Montierth on 3/28/17.
//  Copyright © 2017 Angela Montierth. All rights reserved.
//

import Foundation

class DueDateController {
    

    static let shared = DueDateController()
    
    var dueDate: Date?
    
    func calculateDueDate(lmpDate: Date) {
        
        let lmpDateTimeInterval = lmpDate.timeIntervalSince1970
        
        let dueDate = lmpDateTimeInterval + (280 * 60 * 60 * 24)
        
        let formattedDate = Date(timeIntervalSince1970: dueDate)
        
        self.dueDate = formattedDate
        
    }
}

