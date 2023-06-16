//
//  PetsCollectionViewCell.swift
//  UIMentoringSession
//
//  Created by Владислав Юрченко on 12.06.2023.
//  Copyright © 2023 Almost Engineer. All rights reserved.
//

import UIKit
import Rswift

class PetsCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var breedLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var petsImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    private func setupLayout() {
        layer.cornerRadius = 16
        backgroundColor = RColor.petWhiteColor()
        layer.shadowColor = UIColor.gray.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 10)
        layer.shadowRadius = 3
        layer.shadowOpacity = 0.1
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
    
    func setup(model pet: VladyslavYurchenko_PetModel) {
        breedLabel.text = pet.breed
        ageLabel.text = pet.age
        nameLabel.text = pet.name
        petsImage.image = pet.animal
      
    }
}
