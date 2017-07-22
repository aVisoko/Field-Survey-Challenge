//
//  FieldSurveyJSONLoader.swift
//  Field Survey
//
//  Created by Leo Kim on 7/20/17.
//  Copyright © 2017 LionsGold. All rights reserved.
//

import Foundation

class FieldSurveyJSONLoader {
    class func load (fileName: String) -> [FieldObservation] {
        var fieldObservation = [FieldObservation]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
             let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
                fieldObservation = FieldSurveyJSONParser.parse(data)
            }
            return fieldObservation
    }
}
