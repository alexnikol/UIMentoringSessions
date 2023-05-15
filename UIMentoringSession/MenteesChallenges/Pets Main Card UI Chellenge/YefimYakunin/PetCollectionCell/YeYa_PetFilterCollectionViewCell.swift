import UIKit

final class YeYa_PetFilterCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var petIconImage: UIImageView!
    @IBOutlet weak var kindOfPetLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupLayout()
    }
    
    private func setupLayout() {
        layer.cornerRadius = 26
        layer.borderWidth = 0.5
        layer.borderColor = UIColor(resource: RColor.descriptionColor)?.cgColor
    }
    
    func setup(model filter: YeYa_PetFilterModel, isSelected: Bool) {
        petIconImage.image = filter.icon
        kindOfPetLabel.text = filter.title
        if isSelected {
            backgroundColor = RColor.petSelectColor()
        } else {
            backgroundColor = .white
        }
    }
}
