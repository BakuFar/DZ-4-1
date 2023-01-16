//
//  ProductModel.swift
//  DZ#4-1
//
//  Created by Фархат Сталбек уулу on 25/12/22.
//

import Foundation

var productJson = """
[
    {
        "productName": "Burger Craze",
        "productImages": "Product1",
        "productDiscountImage": "Discount",
        "productTime": "15 - 20 min",
        "productDistance": "1.5 km away",
        "productTriangleImage": "Navigate",
        "productCountry": "American"
    },
    {
        "productName": "Vegetarian Pizza",
        "productImages": "Product2",
        "productDiscountImage": "",
        "productTime": "10 -15 min",
        "productDistance": "",
        "productTriangleImage": "",
        "productCountry": "Italian"
    },
    {
        "productName": "Burger Craze",
        "productImages": "Product1",
        "productDiscountImage": "Discount",
        "productTime": "15 - 20 min",
        "productDistance": "1.5 km away",
        "productTriangleImage": "Navigate",
        "productCountry": "American"
    },
    {
        "productName": "Vegetarian Pizza",
        "productImages": "Product2",
        "productDiscountImage": "",
        "productTime": "10 -15 min",
        "productDistance": "",
        "productTriangleImage": "",
        "productCountry": "Italian"
    }
]
"""

struct ProductModel: Decodable {
    var productName: String
    var productImages: String
    var productDiscountImage: String
    var productTime: String
    var productDistance: String
    var productTriangleImage: String
    var productCountry: String
}
