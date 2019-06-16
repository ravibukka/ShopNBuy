//
//  ProductsManager.swift
//  ShopNBuy
//
//  Created by Ravi on 16/06/19.
//  Copyright © 2019 Personal. All rights reserved.
//

import Foundation

class ProductsListHelper {
    
    private let productsJson = """
        [
            {
                "name": "Peas",
                "price": 0.95,
                "unit": "bag"
            },
            {
                "name": "Eggs",
                "price": 2.10,
                "unit": "dozen"
            },
            {
                "name": "Milk",
                "price": 1.30,
                "unit": "bottle"
            },
            {
                "name": "Beans",
                "price": 0.73,
                "unit": "can"
            },
            {
                "name": "Bread",
                "price": 1,
                "unit": "packet"
            },
            {
                "name": "Sauce",
                "price": 0.10,
                "unit": "dozen"
            },
            {
                "name": "Vegetable",
                "price": 1.30,
                "unit": "Ounce"
            },
            {
                "name": "Juice",
                "price": 2,
                "unit": "can"
            },
        ]
        """.data(using: .utf8)!
    
    func all() -> [Product] {
        let decoder = JSONDecoder()
        let products = try! decoder.decode([Product].self, from: productsJson)
        
        return products
    }
}

