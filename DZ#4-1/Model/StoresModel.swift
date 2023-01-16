//
//  StoresModel.swift
//  DZ#4-1
//
//  Created by Фархат Сталбек уулу on 25/12/22.
//

import Foundation

var storeJson = """
[
    {
        "storeName": "Takeaways",
        "storeImage": "Store1"
    },
    {
        "storeName": "Grocery",
        "storeImage": "Store2"
    },
    {
        "storeName": "Convenience",
        "storeImage": "Store3"
    },
    {
        "storeName": "Pharmacy",
        "storeImage": "Store4"
    },
    {
        "storeName": "Takeaways",
        "storeImage": "Store1"
    },
    {
        "storeName": "Grocery",
        "storeImage": "Store2"
    },
    {
        "storeName": "Convenience",
        "storeImage": "Store3"
    },
    {
        "storeName": "Pharmacy",
        "storeImage": "Store4"
    }
]
"""

struct StoreModel: Decodable {
    var storeName: String
    var storeImage: String
}
