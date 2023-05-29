//
//  MaksymBilyk_FilterViewModel.swift
//  UIMentoringSession
//
//  Created by Maxos on 5/29/23.
//  Copyright © 2023 Almost Engineer. All rights reserved.
//

import UIKit

struct MaksymBiylk_FilterViewModel {
    let title: String
    let type: MaksymBilyk_AnimalsTypes
    let animal: UIImage
}

let filterItems: [MaksymBiylk_FilterViewModel] = [
    .init(title: "All",
          type: .Pets,
          animal: RImage.allPet()!
         ),
    .init(title: "Cat",
          type: .cats,
          animal: RImage.catPet()!
         ),
    .init(title: "Dog",
          type: .dogs,
          animal: RImage.dogPet()!
         ),
]
