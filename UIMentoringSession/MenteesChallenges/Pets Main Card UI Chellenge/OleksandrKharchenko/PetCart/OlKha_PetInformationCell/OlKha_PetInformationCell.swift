import UIKit
import Rswift

final class OlKha_PetInformationCell: UICollectionViewCell, ReuseIdentifierType {
    typealias ReusableType = OlKha_PetInformationCell
    
    @IBOutlet private weak var infoPetLabel: UILabel!
    
    private func setupLayout() {
        backgroundColor = .red
        layer.cornerRadius = 26
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
