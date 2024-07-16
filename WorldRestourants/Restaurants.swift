//
//  Restaurants.swift
//  WorldRestourants
//
//  Created by Aitzhan Ramazan on 09.07.2024.
//

import Foundation
import SwiftyJSON

struct Restaurants{
    var name = ""
    var location = ""
    var street = ""
    var image = ""
    
    init(json: JSON){
        if let item = json["name"].string{
            name = item
        }
        if let item = json["location"].string{
            location = item
        }
        if let item = json["street"].string{
            street = item
        }
        if let item = json["image"].string{
            image = item
        }
    }
}
