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
        manualLabel.text = RText.gamingFirstPartOfText()
        appleButton.setTitle(RText.gamingAppleButton().uppercased(), for: .normal)
        appleButton.setImage(RImage.appleIcon(), for: .normal)
        facebookButton.setTitle(RText.gamingFacebookButton().uppercased(), for: .normal)
        facebookButton.setImage(RImage.facebookIcon(), for: .normal)
        phoneButton.setTitle(RText.gamingPhoneButton().uppercased(), for: .normal)
        phoneButton.setImage(RImage.phoneIcon(), for: .normal)
        setUnderlineText()
        for button in [appleButton, facebookButton, phoneButton] {
            button?.layer.cornerRadius = 20
            button?.layer.borderColor = UIColor.white.cgColor
            button?.layer.borderWidth = 1
        }
    }
    
    func setUnderlineText() {
        let attributes: [NSAttributedString.Key: Any] = [
                  .foregroundColor: UIColor.white, //Text color
                  .font: UIFont.systemFont(ofSize: 15.0, weight: .semibold), //Font, Font size and Font Weight
                  .underlineStyle: 1, //Width of underline
                  .underlineColor: UIColor.white //Color of underline
              ]
        let resultString = NSAttributedString(string: RText.gamingPasswordLabel(), attributes: attributes)
        passwordLabel.attributedText = resultString
    }
    
    init() {
        super.init(nibName: String(describing: VladyslavYurchenko_GamingScreenViewController.self), bundle: nil)
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [RColor.firstBackgroundColor()!.cgColor, RColor.secondBackgroundColor()!.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds
        
        self.view.layer.insertSublayer(gradientLayer, at:0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
