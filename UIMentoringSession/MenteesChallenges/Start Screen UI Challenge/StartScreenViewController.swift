import UIKit

class StartScreenViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadXib()
    }
    
    func loadXib() -> UIView? {
      if let view = Bundle.main.loadNibNamed("StartScreenViewController", owner: self, options: nil)?.first as? UIView {
            return view
        }
        return nil
    }
}
