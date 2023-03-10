// Copyright © 2023 Almost Engineer. All rights reserved.

import UIKit

final class OlNik_MainButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
        
    override func layoutSubviews() {
        super.layoutSubviews()
        setTitleColor(R.color.secondaryLabelColor(), for: .normal)
        titleLabel?.textColor = R.color.secondaryLabelColor()
        titleLabel?.font = UIFont.systemFont(ofSize: 14.0, weight: .bold)
    }
        
    private func setup() {
        backgroundColor = R.color.mainButtonBG()
        layer.cornerRadius = 10.0
    }
}
