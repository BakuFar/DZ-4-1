//
//  ViewController.swift
//  DZ#4-1
//
//  Created by Фархат Сталбек уулу on 25/12/22.
//

import UIKit
class ViewController: UIViewController {
    
    private let deliveryArray: [Delivery] = [
        Delivery(
            deliveryText: "Delivery",
            deliveryTextColor: .white,
            deliceryImage: "play",
            deliveryBackgroundColor: .orange,
            deliveryWidth: 105
        ),
        Delivery(
            deliveryText: "Pickup",
            deliveryTextColor: .green,
            deliceryImage: "",
            deliveryBackgroundColor: .white,
            deliveryWidth: 80
        ),
        Delivery(
            deliveryText: "Catering",
            deliveryTextColor: .green,
            deliceryImage: "",
            deliveryBackgroundColor: .white,
            deliveryWidth: 90
        ),
        Delivery(
            deliveryText: "Curbside",
            deliveryTextColor: .green,
            deliceryImage: "",
            deliveryBackgroundColor: .white,
            deliveryWidth: 90
        ),
        Delivery(
            deliveryText: "Delivery",
            deliveryTextColor: .white,
            deliceryImage: "play",
            deliveryBackgroundColor: .orange,
            deliveryWidth: 105
        ),
        Delivery(
            deliveryText: "Pickup",
            deliveryTextColor: .green,
            deliceryImage: "",
            deliveryBackgroundColor: .white,
            deliveryWidth: 80
        ),
        Delivery(
            deliveryText: "Catering",
            deliveryTextColor: .green,
            deliceryImage: "",
            deliveryBackgroundColor: .white,
            deliveryWidth: 90
        ),
        Delivery(
            deliveryText: "Curbside",
            deliveryTextColor: .green,
            deliceryImage: "",
            deliveryBackgroundColor: .white,
            deliveryWidth: 90
        )
    ]
    
    private let storeArray: [Store] = [
        Store(storeName: "Takeaways", storeImage: "Store1"),
        Store(storeName: "Grocery", storeImage: "Store2"),
        Store(storeName: "Convenience", storeImage: "Store3"),
        Store(storeName: "Pharmacy", storeImage: "Store4"),
        Store(storeName: "Takeaways", storeImage: "Store1"),
        Store(storeName: "Grocery", storeImage: "Store2"),
        Store(storeName: "Convenience", storeImage: "Store3"),
        Store(storeName: "Pharmacy", storeImage: "Store4")
    ]
    
    private let productArray: [Product] = [
        Product(
            productName: "Burger Craze",
            productImages: "Product1",
            productDiscountImage: "Discount",
            productTime: "15 - 20 min",
            productDistance: "1.5 km away",
            productTriangleImage: "Navigate",
            productCountry: "American"
        ),
        Product(
            productName: "Vegetarian Pizza",
            productImages: "Product2",
            productDiscountImage: "",
            productTime: "10 -15 min",
            productDistance: "",
            productTriangleImage: "",
            productCountry: "Italian"
        ),
        Product(
            productName: "Burger Craze",
            productImages: "Product1",
            productDiscountImage: "Discount",
            productTime: "15 - 20 min",
            productDistance: "1.5 km away",
            productTriangleImage: "Navigate",
            productCountry: "American"
        ),
        Product(
            productName: "Vegetarian Pizza",
            productImages: "Product2",
            productDiscountImage: "",
            productTime: "10 -15 min",
            productDistance: "",
            productTriangleImage: "",
            productCountry: "Italian"
        )
    ]
    
    @IBOutlet private weak var deliveryCollectionView: UICollectionView!
    @IBOutlet private weak var storesCollectionView: UICollectionView!
    @IBOutlet weak var productTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureDeliveryCollectionView()
        configureStoresCollectionView()
        configureProductTableView()
    }
    
    private func configureDeliveryCollectionView() {
        deliveryCollectionView.dataSource = self
        deliveryCollectionView.delegate = self
        deliveryCollectionView.register(
            UINib(
                nibName: String(describing: DeliveryCollectionViewCell.self),
                bundle: nil
            ),
            forCellWithReuseIdentifier: DeliveryCollectionViewCell.reusId
        )
    }
    private func configureStoresCollectionView() {
        storesCollectionView.dataSource = self
        storesCollectionView.delegate = self
        storesCollectionView.register(
            UINib(
                nibName: String(describing: StoresCollectionViewCell.self),
                bundle: nil
            ),
            forCellWithReuseIdentifier: StoresCollectionViewCell.reusId
        )
    }
    
    private func configureProductTableView() {
        productTableView.dataSource = self
        productTableView.delegate = self
        productTableView.register(
            UINib(
                nibName: String(describing: ProductTableViewCell.self),
                bundle: nil
            ),
            forCellReuseIdentifier: ProductTableViewCell.reusId
        )
    }
}

extension ViewController: UICollectionViewDataSource {
   
    func collectionView(
        _ collectionView: UICollectionView,
        numberOfItemsInSection section: Int
    ) -> Int {
        if collectionView == deliveryCollectionView {
            return deliveryArray.count
        } else {
            return storeArray.count
        }
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        if collectionView == deliveryCollectionView {
            let cell = collectionView.dequeueReusableCell(
                withReuseIdentifier: DeliveryCollectionViewCell.reusId,
                for: indexPath
            ) as! DeliveryCollectionViewCell
            let delivery = deliveryArray[indexPath.row]
            cell.display(item: delivery)
            cell.backgroundColor = deliveryArray[indexPath.row].deliveryBackgroundColor
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(
                withReuseIdentifier: StoresCollectionViewCell.reusId,
                for: indexPath
            ) as! StoresCollectionViewCell
            let store = storeArray[indexPath.row]
            cell.display(item: store)
            return cell
        }
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAt indexPath: IndexPath
    ) -> CGSize {
        if collectionView == deliveryCollectionView {
            return CGSize(width: deliveryArray[indexPath.row].deliveryWidth , height: 36)
        } else {
            return CGSize(width: 95, height: 120)
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: ProductTableViewCell.reusId,
            for: indexPath
        ) as! ProductTableViewCell
        let product = productArray[indexPath.row]
        cell.display(item: product)
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
}
  
