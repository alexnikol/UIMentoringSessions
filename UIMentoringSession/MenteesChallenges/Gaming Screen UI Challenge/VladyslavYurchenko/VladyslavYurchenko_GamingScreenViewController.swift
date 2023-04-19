//
//  VladyslavYurchenko_GamingScreenViewController.swift
//  UIMentoringSession
//
//  Created by Владислав Юрченко on 17.04.2023.
//  Copyright © 2023 Almost Engineer. All rights reserved.
//

import UIKit

final class VladyslavYurchenko_GamingScreenViewController: UIViewController {
    var gradientLayer:CAGradientLayer!
    @IBOutlet weak var logoBird: UIImageView!
    @IBOutlet weak var gamingLabel: UILabel!
    @IBOutlet weak var manualLabel: UILabel!
    @IBOutlet weak var appleButton: UIButton!
    @IBOutlet weak var facebookButton: UIButton!
    @IBOutlet weak var phoneButton: UIButton!
    @IBOutlet weak var passwordLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        gamingLabel.text = RText.gamingGamingLabel()
        gamingLabel.layer.cornerRadius = 30
        manualLabel.text = RText.gamingFirstPartOfText()
        appleButton.setTitle(RText.gamingAppleButton(), for: .normal)
        facebookButton.setTitle(RText.gamingFacebookButton(), for: .normal)
        phoneButton.setTitle(RText.gamingPhoneButton(), for: .normal)
        passwordLabel.text = RText.gamingPasswordLabel()
    }
    
    init() {
        super.init(nibName: String(describing: VladyslavYurchenko_GamingScreenViewController.self), bundle: nil)
        let colorTop = UIColor(red: 85.0 / 255.0, green: 240.0 / 255.0, blue: 203.0 / 255.0, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 0.0 / 255.0, green: 102.0 / 255.0, blue: 255 / 255.0, alpha: 1.0).cgColor
        let gradientLayer = CAGradientLayer()
           gradientLayer.colors = [colorTop, colorBottom]
           gradientLayer.locations = [0.0, 1.0]
           gradientLayer.frame = self.view.bounds
                   
           self.view.layer.insertSublayer(gradientLayer, at:0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
