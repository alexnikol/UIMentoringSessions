import UIKit
import Rswift

class Olkha_FilterAnimalsCell: UICollectionViewCell {
    @IBOutlet weak var filterAnimalsLabel: UILabel!
    @IBOutlet weak var filterAnimalsImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setup() {
        backgroundColor = .white
        layer.cornerRadius = 26
        layer.borderWidth = 0.5
        layer.borderColor = UIColor(resource: RColor.descriptionColor)?.cgColor
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
