//
//  GlobalFood.swift
//  FoodAppUI
//
//  Created by Kadirhan Keles on 20.10.2023.
//

import Foundation

class GlobalFood {
    var name: String
    var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
}

class SelectedGlobalFood {
    static let shared = SelectedGlobalFood()
    var selected: GlobalFood?
    
    private init() { }
}
