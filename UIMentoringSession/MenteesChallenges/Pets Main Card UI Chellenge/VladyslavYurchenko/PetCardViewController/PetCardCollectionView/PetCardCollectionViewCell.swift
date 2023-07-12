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
    
    func setup(model: (title: String, color: UIColor)) {
        petInfoLabel.text = model.title
        backgroundColor = model.color
    }
}
