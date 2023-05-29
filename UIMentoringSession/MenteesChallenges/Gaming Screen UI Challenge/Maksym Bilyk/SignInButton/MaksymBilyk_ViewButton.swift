//
//  MaksymBilyk_Button.swift
//  UIMentoringSession
//
//  Created by Maxos on 5/26/23.
//  Copyright © 2023 Almost Engineer. All rights reserved.
//

import UIKit

final class MaksymBilyk_ViewButton: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupViewButton()
    }
    
    private func setupViewButton() {
        let colorViewForButton = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.20)
        backgroundColor = colorViewForButton
        layer.cornerRadius = 24
        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 2
    }
}
