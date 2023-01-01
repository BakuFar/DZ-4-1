//
//  StoresCollectionViewCell.swift
//  DZ#4-1
//
//  Created by Фархат Сталбек уулу on 25/12/22.
//

import UIKit

class StoresCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var storeImageView: UIImageView!
    @IBOutlet weak var storeNameLabel: UILabel!
    
    func display(item: Store) {
        storeImageView.image = UIImage(named: item.storeImage)
        storeNameLabel.text = item.storeName
    }
    
    public static let reusId = String(describing: StoresCollectionViewCell.self)
}
