//
//  VladyslavYurchenkoButton.swift
//  UIMentoringSession
//
//  Created by Владислав Юрченко on 19.04.2023.
//  Copyright © 2023 Almost Engineer. All rights reserved.
//

import UIKit

final class CustomButtonView: NibInitiableView {
    @IBOutlet private weak var imageIcon: UIImageView!
    @IBOutlet private weak var button: UIButton!
    
    override func setup() {
        super.setup()
        buttonView()
    }
    
    func setupModel(title: String, image: UIImage?) {
        button.setTitle(title, for: .normal)
        imageIcon.image = image
    }
    
    private func buttonView() {
        let colorViewForButtons = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.2)
        backgroundColor = colorViewForButtons
        layer.cornerRadius = 23.0
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }
}
