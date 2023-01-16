//
//  DeliveryCollectionViewCell.swift
//  DZ#4-1
//
//  Created by Фархат Сталбек уулу on 25/12/22.
//

import UIKit
@IBDesignable
class DeliveryCollectionViewCell: UICollectionViewCell {
    @IBOutlet private weak var deliveryImageView: UIImageView!
    @IBOutlet private weak var deliveryLabel: UILabel!
    
    @IBInspectable private var cornerRadius: CGFloat {
        get { self.layer.cornerRadius }
        set { self.layer.cornerRadius = newValue }
    }
    @IBInspectable private var borderWidth: CGFloat {
        get { self.layer.borderWidth }
        set { self.layer.borderWidth = newValue }
    }
    
    public static let reusId = String(describing: DeliveryCollectionViewCell.self)

    func display(item: DeliveryModel) {
        deliveryImageView.image = UIImage(named: item.deliceryImage)
        deliveryLabel.text = item.deliveryText
    }
}
