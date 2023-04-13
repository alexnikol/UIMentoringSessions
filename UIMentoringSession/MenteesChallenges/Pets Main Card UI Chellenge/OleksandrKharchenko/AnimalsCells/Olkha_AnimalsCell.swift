import UIKit
import Rswift

final class Olkha_AnimalsCell: UICollectionViewCell, ReuseIdentifierType {
    public typealias ReusableType = Olkha_AnimalsCell
    
    @IBOutlet weak var animalsImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var breadAnimalLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setup() {
        layer.cornerRadius = 16
        backgroundColor = .white
        layer.shadowColor = UIColor.gray.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 10)
        layer.shadowRadius = 3
        layer.shadowOpacity = 0.1
        layer.masksToBounds = false
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
}

extension UICollectionViewCell {
    public var identifier: String {
        return String(describing: self)
    }
}
