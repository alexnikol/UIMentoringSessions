//
//  FilterCollectionViewCell.swift
//  UIMentoringSession
//
//  Created by Владислав Юрченко on 13.06.2023.
//  Copyright © 2023 Almost Engineer. All rights reserved.
//

import UIKit
import Rswift

class FilterCollectionViewCell: UICollectionViewCell, ReuseIdentifierType {
    typealias ReusableType = FilterCollectionViewCell

    @IBOutlet weak var petsFilterImage: UIImageView!
    @IBOutlet weak var petsLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        setupLayout()
    }
    
    func setup(model filter: VladyslavYurchenko_FilterViewModel, isSelected: Bool) {
        petsFilterImage.image = filter.animal
        petsLabel.text = filter.title
        if isSelected {
            backgroundColor = RColor.petSelectColor()
            layer.borderColor = RColor.petSelectColor()?.cgColor
            petsLabel.textColor = .white
        } else {
            backgroundColor = RColor.petWhiteColor()
            layer.borderColor = UIColor.black.withAlphaComponent(0.05).cgColor
            petsLabel.textColor = RColor.petTextColor()
        }
    }
    
    private func setupLayout() {
        layer.cornerRadius = 26
        layer.borderWidth = 1
    }
}
