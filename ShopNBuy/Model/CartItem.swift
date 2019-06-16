//
//  CartItem.swift
//  ShopNBuy
//
//  Created by Ravi on 16/06/19.
//  Copyright © 2019 Personal. All rights reserved.
//

import Foundation

class CartItem {
    
    var quantity : Int = 1
    var product : Product
    
    var subTotal : Float { get { return product.price * Float(quantity) } }
    
    init(product: Product) {
        self.product = product
    }
}
