//
//  MaksymBilyk_MainButton.swift
//  UIMentoringSession
//
//  Created by Maxos on 5/23/23.
//  Copyright © 2023 Almost Engineer. All rights reserved.
//

import UIKit

final class MaksymBilyk_MainButton: UIButton {
    
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
        setTitleColor(UIColor(named: "buttonColor"), for: .normal)
        titleLabel?.textColor = UIColor(named: "descriptionColor")
        titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .bold)
    }
    
    private func setup() {
        backgroundColor = UIColor(named: "buttonColor")
        layer.cornerRadius = 10.0
    }
}
