//
//  ProductListViewModel.swift
//  NeonAppsCase
//
//  Created by engin gülek on 20.06.2022.
//

import Foundation

struct ProductListViewModel  {
    var productList : [ProductViewModel]
    init(){
        self.productList = [ProductViewModel]()
    }
    
    func numberOfRowInSection()->Int {
        return productList.count
    }
    
    func cellForRowAt(_ index:Int)-> ProductViewModel {
        return productList[index]
    }
    
}

struct ProductViewModel {
    var product:Product
    
    var productId : Int {
        return product.productId
    }
    
    var productImage:String {
        return product.productImage
    }
    
    var productBrand:String {
        return product.productBrand
    }
    
    var productModel : String {
        return product.productModel
    }
    
    var productPrice : Int {
        return product.productPrice
    }
    
}
