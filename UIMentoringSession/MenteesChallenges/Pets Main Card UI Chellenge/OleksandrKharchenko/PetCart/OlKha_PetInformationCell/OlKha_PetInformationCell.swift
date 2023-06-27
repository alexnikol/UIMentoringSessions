import UIKit
import Rswift

class OlKha_PetInformationCell: UICollectionViewCell, ReuseIdentifierType {
    typealias ReusableType = OlKha_PetInformationCell
    
    @IBOutlet weak var infoPetLabel: UILabel!
    
    private func setupLayout() {
        backgroundColor = .red
        layer.cornerRadius = 26
        layer.borderWidth = 1
        layer.borderColor = UIColor.black.withAlphaComponent(0.08).cgColor
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupLayout()
    }
    
    func setup(model: OlKha_InfoPetViewModel) {
        infoPetLabel.text = model.title
    }
}
