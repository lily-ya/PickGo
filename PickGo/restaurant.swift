//
//  restaurant.swift
//  PickGo
//
//  Created by Lily on 3/20/18.
//  Copyright © 2018 Lily. All rights reserved.
//

import Foundation

class Restaurant {
    //Properties
    var name:String
    var rating:Int
    var phoneNumber:String
    var street:String
    var city: String
    var state: String
    var zip: Int
//    var description: String
    
    //Methods
    ///init method, to set the default value
    init(name:String, rating:Int, phoneNumber:String, street:String, city:String, state:String, zip:Int) {
        self.name = name
        self.rating = rating
        self.phoneNumber = phoneNumber
        self.street = street
        self.city = city
        self.state = state
        self.zip = zip
    }
    
}
