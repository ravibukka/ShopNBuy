//
//  Currency.swift
//  ShopNBuy
//
//  Created by Ravi on 16/06/19.
//  Copyright © 2019 Personal. All rights reserved.
//

import Foundation

struct Currency: Codable {
    
    var quotes : Dictionary<String,Float>
    var timestamp : Int64
}
