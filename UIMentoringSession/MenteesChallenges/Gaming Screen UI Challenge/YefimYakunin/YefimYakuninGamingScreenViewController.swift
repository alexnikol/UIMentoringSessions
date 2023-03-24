import UIKit

final class YefimYakuninGamingScreenViewController: UIViewController {
    var gradient: CAGradientLayer!
    @IBOutlet private weak var forgotPassLabel: UILabel!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var termsAndConditionsLabel: UILabel!
    @IBOutlet private weak var appleButton: YeYaSignInButton!
    @IBOutlet private weak var fbButton: YeYaSignInButton!
    @IBOutlet private weak var phoneButton: YeYaSignInButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpGradient()
        
        titleLabel.text = R.string.texts.gamingGamingLabel()
        termsAndConditionsLabel.attributedText = addAttributeMixed(
            firstPartOfText: R.string.texts.gamingFirstPartOfText(),
            secondPartOfText: R.string.texts.gamingSecondPartOfText()
        )
        if #available(iOS 15, *) {
            appleButton.configuration?.title = R.string.texts.gamingAppleButton()
            appleButton.configuration?.image = R.image.appleIcon()
            fbButton.configuration?.title = R.string.texts.gamingFacebookButton()
            fbButton.configuration?.image = R.image.facebookIcon()
            phoneButton.configuration?.title = R.string.texts.gamingPhoneButton()
            phoneButton.configuration?.image = R.image.phoneIcon()
        } else {
            appleButton.setTitle(R.string.texts.gamingAppleButton(), for: .normal)
            appleButton.setImage(R.image.appleIcon(), for: .normal)
            fbButton.setTitle(R.string.texts.gamingFacebookButton(), for: .normal)
            fbButton.setImage(R.image.facebookIcon(), for: .normal)
            phoneButton.setTitle(R.string.texts.gamingPhoneButton(), for: .normal)
            phoneButton.setImage(R.image.phoneIcon(), for: .normal)
        }
        forgotPassLabel.attributedText = addAttribute(partOfText: R.string.texts.gamingPasswordLabel())
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        gradient.frame = view.bounds
    }
    
    func setUpGradient() {
        gradient = CAGradientLayer()
        let colorTop = UIColor(red: 0.33, green: 0.94, blue: 0.80, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 0.00, green: 0.40, blue: 1.00, alpha: 1.0).cgColor
        gradient.colors = [colorTop, colorBottom]
        gradient.startPoint = CGPoint(x: 0.5, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        gradient.frame = view.bounds
        view.layer.insertSublayer(gradient, at: 0)
    }
    
    func addAttributeMixed(firstPartOfText: String, secondPartOfText: String) -> NSMutableAttributedString {
        let firstAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white,
            .font: UIFont.systemFont(ofSize: 13.0),
            .strikethroughColor: UIColor.white,
        ]
        let secondAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white,
            .font: UIFont.systemFont(ofSize: 13.0, weight: .heavy),
            .underlineStyle: 1,
            .underlineColor: UIColor.white
        ]
        let firstString = NSMutableAttributedString(string: firstPartOfText, attributes: firstAttributes)
        let secondString = NSAttributedString(string: secondPartOfText, attributes: secondAttributes)
        firstString.append(secondString)
        return firstString
    }
    
    func addAttribute(partOfText: String) -> NSMutableAttributedString {
        let firstAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white,
            .font: UIFont.systemFont(ofSize: 15.0, weight: .semibold),
            .underlineStyle: 1,
            .baselineOffset: 4,
            .underlineColor: UIColor.white
        ]
        let firstString = NSMutableAttributedString(string: partOfText, attributes: firstAttributes)
        return firstString
    }
}
