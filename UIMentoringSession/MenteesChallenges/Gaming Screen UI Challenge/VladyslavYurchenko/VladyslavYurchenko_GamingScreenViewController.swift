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
    @IBOutlet weak var appleButton: CustomButtonView!
    @IBOutlet weak var facebookButton: CustomButtonView!
    @IBOutlet weak var phoneButton: CustomButtonView!
    @IBOutlet weak var passwordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gamingLabel.text = RText.gamingGamingLabel()
        setUnderlineText()
        appleButton.setupModel(
            title: RText.gamingAppleButton().uppercased(),
            image: RImage.appleIcon()
        )
        facebookButton.setupModel(
            title: RText.gamingFacebookButton().uppercased(),
            image: RImage.facebookIcon()
        )
        phoneButton.setupModel(
            title: RText.gamingPhoneButton().uppercased(),
            image: RImage.phoneIcon()
        )
        manualLabel.attributedText = addAttributeManual(firstPartOfText: RText.gamingFirstPartOfText(), secondPartOfText: RText.gamingSecondPartOfText())
        manualLabel.isUserInteractionEnabled = true
        let guestureRecognizer = UITapGestureRecognizer(target: self, action:
        #selector (labelClicked(_:)))
        manualLabel.addGestureRecognizer(guestureRecognizer)
        view.addSubview(manualLabel)
        self.view = view
    }
    
    @objc func labelClicked(_ gesture: UITapGestureRecognizer) {
        guard let text = self.manualLabel.text else { return }
        let privacyPolicyRange = (text as NSString).range(of: RText.gamingSecondPartOfText())
        if gesture.didTapAttributedTextInLabel(label: self.manualLabel, inRange: privacyPolicyRange) {
            let alert = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler:  nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func setUnderlineText() {
        let attributes: [NSAttributedString.Key: Any] = [
                  .foregroundColor: UIColor.white, 
                  .font: UIFont.systemFont(ofSize: 15.0, weight: .semibold),
                  .underlineStyle: 1,
                  .underlineColor: UIColor.white
              ]
        let resultString = NSAttributedString(string: RText.gamingPasswordLabel(), attributes: attributes)
        passwordLabel.attributedText = resultString
    }
    
    func addAttributeManual(firstPartOfText: String, secondPartOfText: String) -> NSMutableAttributedString {
        let firstAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white,
            .font: UIFont.systemFont(ofSize: 13, weight: .semibold)]
        let secondAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white,
            .font: UIFont.systemFont(ofSize: 13, weight: .heavy),
            .underlineStyle: 1,
            .underlineColor: UIColor.white,
        ]
        let firstString = NSMutableAttributedString(string: RText.gamingFirstPartOfText(), attributes: firstAttributes)
        manualLabel.attributedText = firstString
        let secondString = NSAttributedString(string: RText.gamingSecondPartOfText(), attributes: secondAttributes)
        manualLabel.attributedText = secondString
        firstString.append(secondString)
        return firstString
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
