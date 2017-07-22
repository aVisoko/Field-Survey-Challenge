//
//  classifications.swift
//  Field Survey
//
//  Created by Leo Kim on 7/20/17.
//  Copyright © 2017 LionsGold. All rights reserved.
//

import UIKit

enum Classifications: String {
    case amphibian
    case bird
    case fish
    case insect
    case mammal
    case plant
    case reptile
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")
    }
}
