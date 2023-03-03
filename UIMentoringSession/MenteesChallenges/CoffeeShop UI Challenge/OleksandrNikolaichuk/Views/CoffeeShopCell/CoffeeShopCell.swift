// Copyright © 2023 Almost Engineer. All rights reserved.

import UIKit
import Rswift

final class CoffeeShopCell: UITableViewCell, ReuseIdentifierType {
    public typealias ReusableType = CoffeeShopCell
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var secondaryLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}


extension UITableViewCell {
    
    public var identifier: String {
        return String(describing: self)
    }
}
