//
//  DeliveryModel.swift
//  DZ#4-1
//
//  Created by Фархат Сталбек уулу on 25/12/22.
//

import UIKit

var deliveryJson = """
[
    {
        "deliveryText": "Delivery",
        "deliceryImage": "play",
        "deliveryWidth": 105
    },
    {
        "deliveryText": "Pickup",
        "deliceryImage": "",
        "deliveryWidth": 80
    },
    {
        "deliveryText": "Catering",
        "deliceryImage": "",
        "deliveryWidth": 90
    {
        "deliveryText": "Curbside",
        "deliceryImage": "",
        "deliveryWidth": 90
    },
    {
        "deliveryText": "Delivery",
        "deliceryImage": "play",
        "deliveryWidth": 105
    },
    {
        "deliveryText": "Pickup",
        "deliceryImage": "",
        "deliveryWidth": 80
    },
    {
        "deliveryText": "Catering",
        "deliceryImage": "",
        "deliveryWidth": 90
    {
        "deliveryText": "Curbside",
        "deliceryImage": "",
        "deliveryWidth": 90
    }
]
"""

struct DeliveryModel: Decodable {
    var deliveryText: String
    var deliceryImage: String
    var deliveryWidth: Int
}
