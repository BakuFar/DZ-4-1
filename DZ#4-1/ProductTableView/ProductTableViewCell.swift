//
//  ProductTableViewCell.swift
//  DZ#4-1
//
//  Created by Фархат Сталбек уулу on 25/12/22.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    @IBOutlet private weak var productImageView: UIImageView!
    @IBOutlet private weak var discountImageView: UIImageView!
    @IBOutlet private weak var productNameLabel: UILabel!
    @IBOutlet private weak var timeLabel: UILabel!
    @IBOutlet private weak var distanceLabel: UILabel!
    @IBOutlet private weak var triangleImageView: UIImageView!
    @IBOutlet private weak var countryLabel: UILabel!
    
    public static let reusId = String(describing: ProductTableViewCell.self)
    
    func display(item: Product) {
        productImageView.image = UIImage(named: item.productImages)
        discountImageView.image = UIImage(named: item.productDiscountImage)
        productNameLabel.text = item.productName
        timeLabel.text = item.productTime
        distanceLabel.text = item.productDistance
        triangleImageView.image = UIImage(named: item.productTriangleImage)
        countryLabel.text = item.productCountry
    }

    
}
