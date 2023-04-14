import UIKit
import Rswift

class Olkha_FilterAnimalsCell: UICollectionViewCell {
    @IBOutlet weak var filterAnimalsLabel: UILabel!
    @IBOutlet weak var filterAnimalsImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    private func setupLayout() {
        backgroundColor = .white
        layer.cornerRadius = 26
        layer.borderWidth = 0.5
        layer.borderColor = UIColor(resource: RColor.descriptionColor)?.cgColor
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
        } else {
            backgroundColor = .white
        }
    }
}
