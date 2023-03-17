//  Copyright © 2023 Almost Engineer. All rights reserved.

import UIKit

final class OleksandrKharchenko_ViewButton: UIView {
    
    func setupViewForButtons() {
        let colorViewForButtons = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.20)
        backgroundColor = colorViewForButtons
        layer.cornerRadius = 24
        layer.borderWidth = 1.66
        layer.borderColor = UIColor.white.cgColor
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewForButtons()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupViewForButtons()
    }
}
