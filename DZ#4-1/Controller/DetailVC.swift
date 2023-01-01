//
//  SecondVC.swift
//  DZ#4-1
//
//  Created by Фархат Сталбек уулу on 29/12/22.
//

import UIKit

class DetailVC: UIViewController {
    var imageName = UIImage()
    var labelText = "text"
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    public static let reusId = String(describing: DetailVC.self)

    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = imageName
        label.text = labelText
    }
}
