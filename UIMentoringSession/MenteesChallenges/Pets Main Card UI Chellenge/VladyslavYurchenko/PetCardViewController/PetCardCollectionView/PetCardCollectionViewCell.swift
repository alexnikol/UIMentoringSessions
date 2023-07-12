import UIKit

final class PetCardCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var petInfoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupLayout()
    }
    
    private func setupLayout() {
        layer.cornerRadius = 13
    }
}
