import UIKit

class YefimYakunin_StartScreenViewController: UIViewController {
    
    @IBOutlet weak var letsGoButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        letsGoButton.layer.cornerRadius = 20
    }
    
    init() {
        super.init(nibName: "YefimYakunin_StartScreenViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
