import UIKit

final class YeYa_PetCell: UICollectionViewCell {
    @IBOutlet private weak var shadowView: UIView!
    @IBOutlet private weak var mainView: UIView!
    @IBOutlet private weak var petImage: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var breedLabel: UILabel!
    @IBOutlet private weak var ageLabel: UILabel!
    
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
    
    private func setupLayout() {
        mainView.layer.cornerRadius = 16
        mainView.backgroundColor = UIColor.white
        shadowView.layer.shadowColor = UIColor.gray.cgColor
        shadowView.layer.shadowOffset = CGSize(width: 5, height: 5)
        shadowView.layer.shadowRadius = 3
        shadowView.layer.shadowOpacity = 0.1
        shadowView.layer.masksToBounds = false
    }
}
