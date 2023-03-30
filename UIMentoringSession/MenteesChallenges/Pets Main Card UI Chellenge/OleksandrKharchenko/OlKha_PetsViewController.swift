import UIKit

class OlKha_PetsViewController: UIViewController {
    @IBOutlet weak var animalsCollectionView: UICollectionView!
    @IBOutlet weak var filterCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    init() {
        super.init(nibName: "OlKha_PetsViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
