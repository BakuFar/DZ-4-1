//
//  DeliveryCollectionViewCell.swift
//  DZ#4-1
//
//  Created by Фархат Сталбек уулу on 25/12/22.
//

import UIKit

class DeliveryCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var deliveryImageView: UIImageView!
    
    @IBOutlet weak var deliveryLabel: UILabel!
    
    public static let reusId = String(describing: DeliveryCollectionViewCell.self)

}
