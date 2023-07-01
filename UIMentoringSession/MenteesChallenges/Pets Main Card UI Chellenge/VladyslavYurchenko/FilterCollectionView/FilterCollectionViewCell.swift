import UIKit

final class FilterCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var petsFilterImage: UIImageView!
    @IBOutlet weak var petsLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        setupLayout()
    }
    
    func setup(model filter: VladyslavYurchenko_FilterViewModel, isSelected: Bool) {
        petsFilterImage.image = filter.animal
        petsLabel.text = filter.title
        if isSelected {
            backgroundColor = RColor.petSelectColor()
            layer.borderColor = RColor.petSelectColor()?.cgColor
            petsLabel.textColor = .white
        } else {
            backgroundColor = RColor.petWhiteColor()
            layer.borderColor = UIColor.black.withAlphaComponent(0.2).cgColor
            petsLabel.textColor = RColor.petTextColor()
        }
    }
    
    private func setupLayout() {
        layer.cornerRadius = 26
        layer.borderWidth = 1
    }
}
