import UIKit

class StartScreenViewController: UIViewController {
    
    @IBOutlet weak var topLabel: UILabel!
    
    @IBOutlet weak var middleLabel: UILabel!
    
    @IBOutlet weak var letsGoButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set up the top label
        topLabel.text = "takee"
        topLabel.font = UIFont.boldSystemFont(ofSize: 17)
        topLabel.textColor = UIColor.white
        
        // Set up the middle label
        middleLabel.text = "Happiness is closer than you think"
        middleLabel.font = UIFont.systemFont(ofSize: 32)
        middleLabel.textColor = UIColor.white
        
        // Set up the LetsGo button
        letsGoButton.setTitle("Let's Go!", for: .normal)
        letsGoButton.titleLabel?.font = UIFont.systemFont(ofSize: 17)
        letsGoButton.setTitleColor(UIColor.white, for: .normal)
        letsGoButton.backgroundColor = .blue
        letsGoButton.layer.cornerRadius = 30
        letsGoButton.layer.masksToBounds = true
    }
    
    init() {
        super.init(nibName: "StartScreenViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
