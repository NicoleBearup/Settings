//
//  Setting.swift
//  Settings
//
//  Created by Nicole Bearup on 7/24/17.
//  Copyright © 2017 Nicole Bearup. All rights reserved.
//

import Foundation
import UIKit

class Setting {
    
    // MARK: Internal Properties
    
    let name: String
    let image: UIImage?
    var isSet: Bool
    
    // MARK: Initializers
    
    init(name: String, image: UIImage?, isSet: Bool) {
        self.name = name
        self.image = image
        self.isSet = isSet
    }
}
