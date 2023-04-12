import UIKit
import Rswift

final class OlkhaAnimalsCell: UICollectionViewCell, ReuseIdentifierType {
    public typealias ReusableType = OlkhaAnimalsCell
    
    @IBOutlet weak var animalsImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var breadAnimalLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

extension UICollectionViewCell {
    public var identifier: String {
        return String(describing: self)
    }
}
