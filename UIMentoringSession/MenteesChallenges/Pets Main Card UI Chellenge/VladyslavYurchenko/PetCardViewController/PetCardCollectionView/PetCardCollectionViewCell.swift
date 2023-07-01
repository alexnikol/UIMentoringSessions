import UIKit

final class PetCardCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var petInfoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupLayout()
    }
    
    func setupLayout() {
        layer.backgroundColor = UIColor.opaqueSeparator.cgColor
        layer.cornerRadius = 13
    }
}
