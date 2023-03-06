//  Copyright © 2023 Almost Engineer. All rights reserved.

import UIKit

class OleksandrKharchenko_GamingScreenViewController: UIViewController {

    
    @IBOutlet private weak var firstView: UIView!
    @IBOutlet private weak var gamingLabel: UILabel!
    @IBOutlet private weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        descriptionLabel.text = "By creating an account or signing you agree to our Terms and Conditions."
        setGradientLayer()

//        let underlineAttribute = [NSAttributedString.Key.underlineStyle: NSUnderlineStyle.thick.rawValue]
//        let underlineAttributedString = NSAttributedString(string: "Terms and Conditions.", attributes: underlineAttribute)
//        descriptionLabel.attributedText = underlineAttributedString
    }
    
    
    
    
    private func setGradientLayer() {
        let gradient = CAGradientLayer()
        let colorTop = UIColor(red: 0.33, green: 0.94, blue: 0.80, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 0.00, green: 0.40, blue: 1.00, alpha: 1.0).cgColor
        gradient.colors = [colorTop, colorBottom]
        gradient.startPoint = CGPoint(x: 0.5, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        gradient.frame = firstView.bounds
        firstView.layer.insertSublayer(gradient, at: 0)
    }
    
    init() {
        super.init(nibName: "OleksandrKharchenko_GamingScreenViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
