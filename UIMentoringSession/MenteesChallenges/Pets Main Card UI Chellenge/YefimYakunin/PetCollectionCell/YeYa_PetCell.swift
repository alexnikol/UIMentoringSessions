import UIKit

class YeYa_PetCell: UICollectionViewCell {

    @IBOutlet weak var petImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var breedLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setupLayout() {
        layer.cornerRadius = 26
        layer.borderWidth = 0.5
        layer.borderColor = UIColor(resource: RColor.descriptionColor)?.cgColor
    }
    
    func setup(model pet: YeYa_Pet) {
        petImage.image = pet.icon
        nameLabel.text = pet.name
        breedLabel.text = pet.breed
        ageLabel.text = pet.age
    }
}
