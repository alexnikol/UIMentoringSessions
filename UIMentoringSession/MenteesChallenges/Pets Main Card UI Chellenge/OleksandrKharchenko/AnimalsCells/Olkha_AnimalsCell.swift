import UIKit
import Rswift

final class Olkha_AnimalsCell: UICollectionViewCell, ReuseIdentifierType {
    public typealias ReusableType = Olkha_AnimalsCell
    
    @IBOutlet private weak var animalImageView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var ageLabel: UILabel!
    @IBOutlet private weak var animalBreedLabel: UILabel!
        
    private func setupLayout() {
        layer.cornerRadius = 16
        backgroundColor = RColor.petWhiteColor()
        layer.shadowColor = UIColor.gray.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 10)
        layer.shadowRadius = 3
        layer.shadowOpacity = 0.1
        layer.masksToBounds = false
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupLayout()
    }
    
    func setup(model: OlKha_PetsViewModel) {
        nameLabel.text = model.name
        ageLabel.text = model.age
        animalBreedLabel.text = model.breedAnimal
        animalImageView.image  = model.animal
    }
}
