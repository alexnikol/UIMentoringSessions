import UIKit
import Rswift

class Olkha_FilterAnimalsCell: UICollectionViewCell, ReuseIdentifierType {
    typealias ReusableType = Olkha_FilterAnimalsCell
    
    @IBOutlet private weak var filterAnimalsLabel: UILabel!
    @IBOutlet private weak var filterAnimalsImage: UIImageView!
    
    private func setupLayout() {
        backgroundColor = .white
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
    
    func setup(model: OlKha_FilterViewModel, isSelected: Bool) {
        filterAnimalsLabel.text = model.title
        filterAnimalsImage.image = model.animal
        if isSelected {
            backgroundColor = RColor.petSelectColor()
            layer.borderColor = RColor.petSelectColor()?.cgColor
            filterAnimalsLabel.textColor = .white
        } else {
            backgroundColor = .white
            layer.borderColor = UIColor.black.withAlphaComponent(0.08).cgColor
            filterAnimalsLabel.textColor = RColor.petTextColor()?.withAlphaComponent(0.6)
        }
    }
}
