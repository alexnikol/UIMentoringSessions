import UIKit

final class YefimYakuninGamingScreenViewController: UIViewController {
    
    @IBOutlet private weak var mainView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpGradient()
    }
    
    func setUpGradient() {
        let gradient = CAGradientLayer()
        let colorTop = UIColor(red: 0.33, green: 0.94, blue: 0.80, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 0.00, green: 0.40, blue: 1.00, alpha: 1.0).cgColor
        gradient.colors = [colorTop, colorBottom]
        gradient.startPoint = CGPoint(x: 0.5, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        gradient.frame = mainView.bounds
        mainView.layer.insertSublayer(gradient, at: 0)
    }
    
    
}
