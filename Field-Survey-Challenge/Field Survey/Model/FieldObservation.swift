//
//  FieldObservation.swift
//  Field Survey
//
//  Created by Leo Kim on 7/20/17.
//  Copyright © 2017 LionsGold. All rights reserved.
//

import UIKit

struct FieldObservation {
    let classification: Classifications
    let title: String
    let description: String
    let date: Date
    
    init(classification: Classifications, title: String, description: String, date: Date) {
        self.classification = classification
        self.title = title
        self.description = description
        self.date = date
    }
    
    init?(classification: String, title: String, description: String, date: Date){
        if let classification = Classifications(rawValue: classification) {
            self.init(classification: classification, title: title, description: description, date: date)
        } else {
            return nil
        }
    }
}
