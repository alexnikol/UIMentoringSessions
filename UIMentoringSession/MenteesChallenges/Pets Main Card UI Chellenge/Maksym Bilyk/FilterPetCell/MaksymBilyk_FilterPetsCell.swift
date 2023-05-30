//
//  MaksymBilyk_FilterPetsCell.swift
//  UIMentoringSession
//
//  Created by Maxos on 5/30/23.
//  Copyright © 2023 Almost Engineer. All rights reserved.
//

import UIKit
import Rswift

class MaksymBilyk_FilterPetsCell: UICollectionViewCell, ReuseIdentifierType {
    typealias ReusableType = MaksymBilyk_FilterPetsCell
    
    @IBOutlet weak var filterPetImage: UIImageView!
    @IBOutlet weak var filterPetLabel: UILabel!
    
    private func setupLayout() {
        backgroundColor = .white
        layer.cornerRadius = 100
        layer.borderColor = UIColor.black.withAlphaComponent(0.20).cgColor
        layer.borderWidth = 1
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupLayout()
    }
    
    func setup(model: MaksymBiylk_FilterViewModel, isSelected: Bool) {
        filterPetLabel.text = model.title
        filterPetImage.image = model.animal
        if isSelected {
            backgroundColor = RColor.petSelectColor()
            layer.borderColor = RColor.petSelectColor()?.cgColor
            filterPetLabel.textColor = .white
        } else {
            backgroundColor = .white
            layer.borderColor = UIColor.black.withAlphaComponent(0.20).cgColor
            filterPetLabel.textColor = RColor.petTextColor()?.withAlphaComponent(0.60)
        }
    }
}
