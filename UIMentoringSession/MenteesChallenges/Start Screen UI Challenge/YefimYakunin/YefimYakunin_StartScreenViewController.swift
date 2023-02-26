import UIKit

final class YefimYakunin_StartScreenViewController: UIViewController {
    @IBOutlet private weak var descriptionLabel: UILabel!
    @IBOutlet private weak var letsGoButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        descriptionLabel.text = "Happiness is closer \nthan you think"
        letsGoButton.setTitle("Let's Go!", for: .normal)
        letsGoButton.layer.cornerRadius = 20
    }
    
    init() {
        super.init(nibName: "YefimYakunin_StartScreenViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
