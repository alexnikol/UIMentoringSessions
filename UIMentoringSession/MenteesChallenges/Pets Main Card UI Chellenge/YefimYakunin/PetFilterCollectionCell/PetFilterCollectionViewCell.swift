import UIKit

final class PetFilterCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var petIconImage: UIImageView!
    @IBOutlet weak var kindOfPetLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .white
        clipsToBounds = true
        layer.cornerRadius = 4
        kindOfPetLabel.font = UIFont.systemFont(ofSize: 16)
    }
}
