//
//  FieldSurveyJSONParser.swift
//  Field Survey
//
//  Created by Leo Kim on 7/20/17.
//  Copyright © 2017 LionsGold. All rights reserved.
//

import Foundation

class FieldSurveyJSONParser {
    
    static let dateFormatter = DateFormatter()
    
    class func parse(_ data: Data) -> [FieldObservation] {
        var fieldObservation = [FieldObservation]()
        dateFormatter.dateFormat = "YYYY-MM-dd HH:mm"
        if let json = try? JSONSerialization.jsonObject(with: data, options: []) ,
             let root = json as? [String: Any],
             let status = root["status"] as? String,
             status == "ok" {
            
                if let observations = root["observations"] as? [Any] {
                    for observation in observations {
                        if let observation = observation as? [String: String] {
                            if let classification = observation["classification"],
                                 let title = observation["title"],
                                 let description = observation["description"],
                                 let dateString = observation["date"],
                                 let date = dateFormatter.date (from: dateString) {
                                    if let fieldObservations = FieldObservation(classification: classification, title: title, description: description, date: date) {
                                        fieldObservation.append(fieldObservations)
                                }
                            }
                        }
                    }
                }
        }
        
        return fieldObservation
    }
}
