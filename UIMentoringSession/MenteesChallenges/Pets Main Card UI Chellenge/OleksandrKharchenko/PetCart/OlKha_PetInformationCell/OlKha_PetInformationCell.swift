import UIKit
import Rswift

final class OlKha_PetInformationCell: UICollectionViewCell, ReuseIdentifierType {
    typealias ReusableType = OlKha_PetInformationCell
    
    @IBOutlet private weak var infoPetLabel: UILabel!
    
    private func setupLayout() {
        layer.cornerRadius = 14.0
    }
    
    override func awakeFromNib() {
        setupLayout()
    }
    
    func setup(model: OlKha_InfoPetViewModel) {
        infoPetLabel.text = model.title
        infoPetLabel.backgroundColor = model.color
    }
}
