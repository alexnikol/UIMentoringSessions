//  Copyright © 2023 Almost Engineer. All rights reserved.

import UIKit

final class OleksandrKharchenko_MainButton: UIButton {
        
    override func layoutSubviews() {
        super.layoutSubviews()
        setTitleColor(UIColor(named: "buttonColor"), for: .normal)
        titleLabel?.textColor = UIColor(named: "descriptionColor")
        titleLabel?.font = UIFont.systemFont(ofSize: 14.0, weight: .bold)
        layer.cornerRadius = 10.0
    }
}
