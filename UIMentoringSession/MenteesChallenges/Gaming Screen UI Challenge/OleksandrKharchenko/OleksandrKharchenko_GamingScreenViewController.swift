//  Copyright © 2023 Almost Engineer. All rights reserved.

import UIKit

final class OleksandrKharchenko_GamingScreenViewController: UIViewController {
    @IBOutlet private weak var gamingLabel: UILabel!
    @IBOutlet private weak var descriptionLabel: UILabel!
    @IBOutlet private weak var passwordLabel: UILabel!
    
    @IBOutlet weak var appleButton: OleksandrKharchenko_MainsButtons!
    @IBOutlet weak var facebookButton: OleksandrKharchenko_MainsButtons!
    @IBOutlet weak var phoneButton: OleksandrKharchenko_MainsButtons!
    
    @IBOutlet weak var appleView: OleksandrKharchenko_ViewButtons!
    @IBOutlet weak var facebookView: OleksandrKharchenko_ViewButtons!
    @IBOutlet weak var phoneView: OleksandrKharchenko_ViewButtons!
    var gradient: CAGradientLayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setGradientLayer()
        gamingLabel.text = RText.gamingGamingLabel()
        passwordLabel.attributedText = AddAtribute(partOfText: RText.gamingPasswordLabel())
        descriptionLabel.attributedText = AddAttributeMixed(firstPartOfText: RText.gamingDescriptionLabel(),
                                                            secondPartOfText: "\nTerms and Conditions.")
        appleButton.configuration?.title = RText.gamingAppleButton().uppercased()
        facebookButton.configuration?.title = RText.gamingFacebookButton().uppercased()
        phoneButton.configuration?.title = RText.gamingPhoneButton().uppercased()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        gradient.frame = view.bounds
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
    
    init() {
        super.init(nibName: "OleksandrKharchenko_GamingScreenViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func AddAttributeMixed(firstPartOfText: String, secondPartOfText: String) -> NSMutableAttributedString {
        let firstAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white,
            .font: UIFont.systemFont(ofSize: 13.0),
            .strokeColor: UIColor.white,
        ]
        let secondaryAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white,
            .font: UIFont.systemFont(ofSize: 13.0, weight: .bold),
            .underlineStyle: 1,
            .underlineColor: UIColor.white
        ]
        let firstString = NSMutableAttributedString(string: firstPartOfText, attributes: firstAttributes)
        let secondaryString = NSAttributedString(string: secondPartOfText, attributes: secondaryAttributes)
        firstString.append(secondaryString)
        return firstString
    }
    
    func AddAtribute(partOfText: String) -> NSMutableAttributedString {
        let oneAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white,
            .font: UIFont.systemFont(ofSize: 13.0, weight: .semibold),
            .strokeColor: UIColor.white,
            .underlineStyle: 1,
            .baselineOffset: 4
        ]
        let oneString = NSMutableAttributedString(string: partOfText, attributes: oneAttributes)
        return oneString
    }
}
