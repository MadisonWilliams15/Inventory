//
//  Product.swift
//  Inventory
//
//  Created by Madison Williams on 4/17/19.
//  Copyright © 2019 Madison Williams. All rights reserved.
//

import Foundation

enum Category: String, Codable {
    case Computers
    case Electronics
    case Kitchen
    case Pets
}

struct Product: Codable {
    var id : Int
    var category : Category
    var title : String
    var price : Float
    var stockedQuantity : Int
}

struct Inventory : Codable{
    var status : String
    var products : [Product]
}
