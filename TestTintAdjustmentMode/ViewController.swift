//
//  ViewController.swift
//  TestTintAdjustmentMode
//
//  Created by Bart van Kuik on 03/03/2017.
//  Copyright © 2017 DutchVirtual. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    private let buttonImage: UIImage = #imageLiteral(resourceName: "buttonimage")

    @IBAction func switchValueChanged(_ sender: UISwitch) {
        let image: UIImage!
        if sender.isOn {
            image = buttonImage.withRenderingMode(.alwaysTemplate)
        } else {
            image = buttonImage.withRenderingMode(.automatic)
        }
        self.button.setImage(image, for: .normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.button.setImage(buttonImage.withRenderingMode(.alwaysTemplate), for: .normal)
    }

}

