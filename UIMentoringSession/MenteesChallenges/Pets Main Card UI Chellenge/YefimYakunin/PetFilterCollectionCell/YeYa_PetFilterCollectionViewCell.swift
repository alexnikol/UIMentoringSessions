import UIKit

final class YeYa_PetFilterCollectionViewCell: UICollectionViewCell {
    @IBOutlet private weak var petIconImage: UIImageView!
    @IBOutlet private weak var kindOfPetLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupLayout()
    }
    
    func setup(petFilterModel petFilter: YeYa_PetFilterModel, isSelected: Bool) {
        petIconImage.image = petFilter.icon
        kindOfPetLabel.text = petFilter.title
        if isSelected {
            backgroundColor = RColor.petSelectColor()
            layer.borderColor = RColor.petSelectColor()?.cgColor
            kindOfPetLabel.textColor = .white
        } else {
            backgroundColor = RColor.petWhiteColor()
            layer.borderColor = UIColor.black.withAlphaComponent(0.05).cgColor
            kindOfPetLabel.textColor = RColor.petTextColor()
        }
    }
    
    private func setupLayout() {
        layer.cornerRadius = 26
        layer.borderWidth = 1
    }
}
