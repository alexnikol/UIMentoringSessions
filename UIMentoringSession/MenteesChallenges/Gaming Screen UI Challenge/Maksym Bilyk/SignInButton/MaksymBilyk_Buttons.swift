//
//  MaksymBilyk_Buttons.swift
//  UIMentoringSession
//
//  Created by Maxos on 5/26/23.
//  Copyright © 2023 Almost Engineer. All rights reserved.
//

import UIKit

final class MaksymBilyk_Buttons: UIButton {
    
    private func setupButton() {
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
