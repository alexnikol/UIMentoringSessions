import UIKit

class YeYa_PetCell: UICollectionViewCell {
    
    @IBOutlet weak var shadowView: UIView!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var petImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var breedLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    private func setupLayout() {
        mainView.layer.cornerRadius = 16
        mainView.backgroundColor = RColor.petWhiteColor()
        shadowView.layer.shadowColor = UIColor.gray.cgColor
        shadowView.layer.shadowOffset = CGSize(width: 0, height: 10)
        shadowView.layer.shadowRadius = 3
        shadowView.layer.shadowOpacity = 0.1
        shadowView.layer.masksToBounds = false
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupLayout()
    }
    
    func setup(model pet: YeYa_PetModel) {
        petImage.image = pet.icon
        nameLabel.text = pet.name
        breedLabel.text = pet.breed
        ageLabel.text = pet.age
    }
}
