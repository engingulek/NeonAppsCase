//
//  ShoesDetailScreen.swift
//  NeonAppsCase
//
//  Created by engin gülek on 20.06.2022.
//

import Foundation
import UIKit

class ShoesDetailScreen : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = true
       
    }
    @IBAction func addtoCart(_ sender: Any) {
        let alertController = UIAlertController(title: "Message", message: "Would you like to add to cart?", preferredStyle: .actionSheet)
        
        alertController.addAction(UIAlertAction(title: "Yes",
                                                style: UIAlertAction.Style.default,
                                             handler: {(_: UIAlertAction!) in
                                               //Sign out action
               }))
        
        alertController.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: { _ in
                   //Cancel Action
               }))
        
               self.present(alertController, animated: true, completion: nil)
    }
}
