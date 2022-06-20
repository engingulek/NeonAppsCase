//
//  MainScreenViewController.swift
//  NeonAppsCase
//
//  Created by engin gülek on 19.06.2022.
//

import Foundation
import UIKit

class HomeScreenViewController: UIViewController{
    @IBOutlet weak var productListCollectionView: UICollectionView!
    private var productList = [Product]()
    private var productListViewModel = ProductListViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productListCollectionView.dataSource = self
        productListCollectionView.delegate = self
        setupUI()
        data()
        
  
    }
    
    override func viewDidLayoutSubviews() {
        self.tabBarController?.tabBar.isHidden = false
    }
    
   
    
   private func setupUI(){
        let design :UICollectionViewFlowLayout = UICollectionViewFlowLayout()
       design.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
       let cellWidthPVC = (UIScreen.main.bounds.width-30)
       let cellHeightPVC = (UIScreen.main.bounds.height-10)/7
       design.itemSize = CGSize(width: cellWidthPVC, height: cellHeightPVC)
       design.minimumLineSpacing = 20
       design.scrollDirection = .vertical
       self.productListCollectionView.collectionViewLayout = design
       
    }
    
    
    private func data() {
        let productOne = Product(productId:1,productImage: "img_shoe1", productBrand: "Nike", productModel: "Air Force", productPrice: 96)
        let productTwo = Product(productId:2,productImage:"img_shoe2", productBrand: "Nike", productModel: "Air Jordon", productPrice: 196)
        let productThree = Product(productId:3,productImage: "img_shoe3", productBrand: "New Balance", productModel: "574 Unisex", productPrice: 96)
        let productFour = Product(productId:4,productImage: "img_shoe4", productBrand: "Nike", productModel: "Air Force", productPrice: 115)
       
        productList.append(productOne)
        productList.append(productTwo)
        productList.append(productThree)
        productList.append(productFour)
        
        self.productListViewModel.productList = productList.map(ProductViewModel.init)
       
    }
}

extension HomeScreenViewController : UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.productListViewModel.numberOfRowInSection()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = productListCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ProductCollectionViewCell
        let product = self.productListViewModel.cellForRowAt(indexPath.row)
        cell.shoesImageView.image = UIImage(named: product.productImage)
        cell.shoesBrandLabel.text =  product.productBrand
        cell.shoesModelLabel.text =  product.productModel
        cell.shoesPriceLabel.text = "$\(product.productPrice)"
        
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.cornerRadius = 20
        cell.layer.borderWidth = 0.5
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    performSegue(withIdentifier: "toDetails", sender: nil)
    }
    
}
