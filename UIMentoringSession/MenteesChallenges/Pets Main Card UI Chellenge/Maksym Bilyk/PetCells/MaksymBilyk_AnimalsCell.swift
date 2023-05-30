//
//  MaksymBilyk_AnimalsCell.swift
//  UIMentoringSession
//
//  Created by Maxos on 5/30/23.
//  Copyright © 2023 Almost Engineer. All rights reserved.
//

import UIKit
import Rswift

final class MaksymBilyk_AnimalsCell: UICollectionViewCell, ReuseIdentifierType {
    typealias ReusableType = MaksymBilyk_AnimalsCell


    @IBOutlet private weak var animalImageView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var animalBreedLabel: UILabel!
    @IBOutlet private weak var ageLabel: UILabel!
    
    private func setupLayout() {
        layer.cornerRadius = 16
        backgroundColor = RColor.petWhiteColor()
        layer.shadowColor = UIColor.gray.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 4)
        layer.shadowRadius = 16
        layer.shadowOpacity = 0.10
        layer.masksToBounds = false
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupLayout()
    }
    
    func setup(model: MaksymBilyk_PetsViewModel) {
        nameLabel.text = model.name
        ageLabel.text = model.age
        animalBreedLabel.text = model.breedAnimal
        animalImageView.image = model.animal
    }
}
