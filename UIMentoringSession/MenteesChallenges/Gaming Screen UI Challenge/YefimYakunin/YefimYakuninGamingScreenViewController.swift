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
        
        titleLabel.text = "Gaming"
        termsAndConditionsLabel.attributedText = addAttributeMixed(firstPartOfText: "By creating an account or signing you agree to our", secondPartOfText: "\nTerms and Conditions.")
        appleButton.configuration?.contentInsets = .init(top: 15, leading: 10, bottom: 15, trailing: 10)
        appleButton.configuration?.title = "SIGN IN WITH APPLE"
        appleButton.configuration?.image = UIImage(named: "apple icon")
        appleButton.configuration?.imagePadding = 20
        fbButton.configuration?.contentInsets = .init(top: 15, leading: 10, bottom: 15, trailing: 10)
        fbButton.configuration?.title = "SIGN IN WITH FACEBOOK"
        fbButton.configuration?.image = UIImage(named: "facebook icon")
        fbButton.configuration?.imagePadding = 20
        phoneButton.configuration?.contentInsets = .init(top: 15, leading: 10, bottom: 15, trailing: 10)
        phoneButton.configuration?.title = "SIGN IN WITH PHONE"
        phoneButton.configuration?.image = UIImage(named: "phone icon")
        phoneButton.configuration?.imagePadding = 20
        forgotPassLabel.attributedText = addAttribute(partOfText: "Forgot your password?")
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
