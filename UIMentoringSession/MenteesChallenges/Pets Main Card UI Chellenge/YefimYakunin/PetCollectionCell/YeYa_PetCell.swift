import UIKit

class YeYa_PetCell: UICollectionViewCell {
    
    @IBOutlet weak var petImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var breedLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupLayout()
    }
    
    private func setupLayout() {
        layer.cornerRadius = 16
        backgroundColor = RColor.petWhiteColor()
        layer.shadowColor = UIColor.gray.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 10)
        layer.shadowRadius = 3
        layer.shadowOpacity = 0.1
        layer.masksToBounds = false
    }
    
    func setup(model pet: YeYa_PetModel) {
        petImage.image = pet.icon
        nameLabel.text = pet.name
        breedLabel.text = pet.breed
        ageLabel.text = pet.age
    }
}
