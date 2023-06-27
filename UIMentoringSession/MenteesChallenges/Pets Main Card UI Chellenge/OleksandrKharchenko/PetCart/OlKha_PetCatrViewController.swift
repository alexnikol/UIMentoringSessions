import UIKit

final class OlKha_PetCatrViewController: UIViewController {
    @IBOutlet weak var mainButton: UIButton!
    @IBOutlet weak var dogOnTheStreetView: UIView!
    @IBOutlet weak var willieDogImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayoutLabel()
    }
    
    private func setupLayoutLabel() {
        willieDogImage.layer.cornerRadius = 32
        dogOnTheStreetView.layer.cornerRadius = 16
        dogOnTheStreetView.backgroundColor = RColor.pinkColor()
        mainButton.layer.cornerRadius = 28
    }
    
    init() {
        super.init(nibName: RNib.olKha_PetCatrViewController.name, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
