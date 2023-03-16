//  Copyright © 2023 Almost Engineer. All rights reserved.

import UIKit

final class OleksandrKharchenko_MainsButtons: UIButton {
    
    func setupButton() {
        titleLabel?.font = UIFont.systemFont(ofSize: 15.0, weight: .semibold)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
}
