//
//  DataLoader.swift
//  FoodAppUI
//
//  Created by Kadirhan Keles on 24.10.2023.
//

import Foundation

class DataLoader {
    static func loadGlobalFoods() -> [GlobalFood] {
            var globalFoods = [GlobalFood]()
    
            let g1 = GlobalFood(name: "Offers", image: "offers")
            let g2 = GlobalFood(name: "Sri Lankan", image: "srilankan")
            let g3 = GlobalFood(name: "Italian", image: "italian")
            let g4 = GlobalFood(name: "Indian", image: "indian")
            
            globalFoods.append(g1)
            globalFoods.append(g2)
            globalFoods.append(g3)
            globalFoods.append(g4)
            
            return globalFoods
        }
    
    static func loadPopulerRestaurents() -> [PopularRestaurent] {
        var popularRestaurents = [PopularRestaurent]()
        
        let p1 = PopularRestaurent(name: "Minute by tuk tuk", image: "tuk", star: "4.9", rating: "(124 ratings)", type: "Café", foodType: "Western Food")
        let p2 = PopularRestaurent(name: "Café de Noir", image: "noir", star: "4.9", rating: "(124 ratings)", type: "Café", foodType: "Western Food")
        let p3 = PopularRestaurent(name: "Bakes by Tella", image: "tella", star: "4.9", rating: "(124 ratings)", type: "Café", foodType: "Western Food")
        
        popularRestaurents.append(p1)
        popularRestaurents.append(p2)
        popularRestaurents.append(p3)
        
        return popularRestaurents
    }
    
    static func loadMostPopular() -> [MostPopular] {
        var mostPopular = [MostPopular]()
        
        let m1 = MostPopular(name: "Café De Bambaa", image: "bambaa", star: "4.9", type: "Café", foodType: "Western Food")
        let m2 = MostPopular(name: "Burger by Bella", image: "bella", star: "4.9", type: "Café", foodType: "Western Food")
        
        mostPopular.append(m1)
        mostPopular.append(m2)
        
        return mostPopular
    }
    
    static func loadRecentItems() -> [PopularRestaurent] {
        var recentItems = [PopularRestaurent]()
        
        let r1 = PopularRestaurent(name: "Mulberry Pizza by Josh", image: "josh", star: "4.9", rating: "(124 ratings)", type: "Café", foodType: "Western Food")
        let r2 = PopularRestaurent(name: "Barita", image: "barita", star: "4.9", rating: "(124 ratings)", type: "Café", foodType: "Western Food")
        let r3 = PopularRestaurent(name: "Pizza Rush Hour", image: "hour", star: "4.9", rating: "(124 ratings)", type: "Café", foodType: "Western Food")
        
        recentItems.append(r1)
        recentItems.append(r2)
        recentItems.append(r3)
        
        return recentItems
    }
    

    
    private init() {
        
    }
}
