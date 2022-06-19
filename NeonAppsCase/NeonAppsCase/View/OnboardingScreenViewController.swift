//
//  OnboardingScreenView.swift
//  NeonAppsCase
//
//  Created by engin gülek on 19.06.2022.
//

import Foundation
import UIKit

class OnboardingScreenViewController : UIViewController {
    @IBOutlet weak var titleLabel :UILabel!
    @IBOutlet weak var startButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text =  "Trendy Shoes for \r\n Every \r\n Feet "
    }
    
    
}
