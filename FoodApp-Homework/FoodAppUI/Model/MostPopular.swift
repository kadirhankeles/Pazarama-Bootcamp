//
//  MostPopular.swift
//  FoodAppUI
//
//  Created by Kadirhan Keles on 23.10.2023.
//

import Foundation

class MostPopular {
    var name: String
    var image: String
    var star: String
    var type: String
    var foodType: String
    
    init(name: String, image: String, star: String, type: String, foodType: String) {
        self.name = name
        self.image = image
        self.star = star
        self.type = type
        self.foodType = foodType
    }
}
