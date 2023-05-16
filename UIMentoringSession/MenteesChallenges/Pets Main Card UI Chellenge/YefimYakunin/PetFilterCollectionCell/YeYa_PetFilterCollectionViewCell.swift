import UIKit

final class YeYa_PetFilterCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var petIconImage: UIImageView!
    @IBOutlet weak var kindOfPetLabel: UILabel!
    
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
        layer.borderWidth = 1
    }
    
    func setup(petFilterModel petFilter: YeYa_PetFilterModel, isSelected: Bool) {
        petIconImage.image = petFilter.icon
        kindOfPetLabel.text = petFilter.title
        if isSelected {
            backgroundColor = RColor.petSelectColor()
            layer.borderColor = RColor.petSelectColor()?.cgColor
            kindOfPetLabel.textColor = .white
            petIconImage.backgroundColor = UIColor.black.withAlphaComponent(0.05)
        } else {
            layer.borderColor = UIColor.black.withAlphaComponent(0.05).cgColor
            backgroundColor = RColor.petWhiteColor()
            kindOfPetLabel.textColor = RColor.petTextColor()
        }
    }
}
