//
//  FilterCollectionViewCell.swift
//  UIMentoringSession
//
//  Created by Владислав Юрченко on 13.06.2023.
//  Copyright © 2023 Almost Engineer. All rights reserved.
//

import UIKit

class FilterCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var petsFilterImage: UIImageView!
    @IBOutlet weak var petsLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        setupLayout()
    }
    
    func setup(model filter: VladyslavYurchenko_FilterType) {
        petsFilterImage.image = filter.image
        petsLabel.text = filter.title
    }
    private func setupLayout() {
        layer.cornerRadius = 26
        layer.borderWidth = 1
    }
}
