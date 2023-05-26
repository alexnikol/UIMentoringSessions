//
//  MaksymBilykGamingScreenViewController.swift
//  UIMentoringSession
//
//  Created by Maxos on 5/25/23.
//  Copyright © 2023 Almost Engineer. All rights reserved.
//

import UIKit

final class MaksymBilykGamingScreenViewController: UIViewController {
    var gradient: CAGradientLayer!
    @IBOutlet private weak var gamingLabel: UILabel!
    @IBOutlet private weak var descriptionLabel: UILabel!
    @IBOutlet private weak var passwordLabel: UILabel!
    @IBOutlet weak var appleButton: MaksymBilyk_Buttons!
    @IBOutlet weak var facebookButton: MaksymBilyk_Buttons!
    @IBOutlet weak var phoneButton: MaksymBilyk_Buttons!
    @IBOutlet weak var appleButtonView: MaksymBilyk_ViewButton!
    @IBOutlet weak var facebookButtonView: MaksymBilyk_ViewButton!
    @IBOutlet weak var phoneButtonView: MaksymBilyk_ViewButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setGradientLayer()
        
        gamingLabel.text = RText.gamingGamingLabel()
        gamingLabel.textColor = UIColor.white
        passwordLabel.attributedText = addAttribute(text: RText.gamingPasswordLabel())
        descriptionLabel.attributedText = addAtributeMixed(
            firstPartOfText: RText.gamingFirstPartOfText(),
            secondPartOfText: RText.gamingSecondPartOfText()
        )
        appleButton.setTitle(RText.gamingAppleButton().uppercased(), for: .normal)
        facebookButton.setTitle(RText.gamingFacebookButton().uppercased(), for: .normal)
        phoneButton.setTitle(RText.gamingPhoneButton().uppercased(), for: .normal)
        }
    
    private func setGradientLayer() {
        gradient = CAGradientLayer()
        let colorTop = UIColor(red: 0.33, green: 0.94, blue: 0.80, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 0.00, green: 0.40, blue: 1.00, alpha: 1.0).cgColor
        gradient.colors = [colorTop, colorBottom]
        gradient.startPoint = CGPoint(x: 0.5, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        gradient.frame = view.bounds
        view.layer.insertSublayer(gradient, at: 0)
    }

    func addAtributeMixed(firstPartOfText: String, secondPartOfText: String) -> NSMutableAttributedString {
        let firstAttribute: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white,
            .font: UIFont.systemFont(ofSize: 13.0)
        ]
        let secondAttribute: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white,
            .font: UIFont.systemFont(ofSize: 13.0, weight: .heavy),
            .underlineStyle: 1,
            .underlineColor: UIColor.white
        ]
        let firstString = NSMutableAttributedString(string: firstPartOfText, attributes: firstAttribute)
        let secondString = NSMutableAttributedString(string: secondPartOfText, attributes: secondAttribute)
        firstString.append(secondString)
        return firstString
    }
    
    func addAttribute(text: String) -> NSMutableAttributedString {
        let attribute: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white,
            .font: UIFont.systemFont(ofSize: 15.0, weight: .semibold),
            .underlineStyle: 1,
            .underlineColor: UIColor.white
        ]
        let string = NSMutableAttributedString(string: text, attributes: attribute)
        return string
    }
    
    init() {
        super.init(nibName: "MaksymBilykGamingScreenViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
