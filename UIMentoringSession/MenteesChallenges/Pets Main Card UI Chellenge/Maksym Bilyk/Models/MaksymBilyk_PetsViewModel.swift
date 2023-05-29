//
//  MaksymBilyk_PetsViewModel.swift
//  UIMentoringSession
//
//  Created by Maxos on 5/30/23.
//  Copyright © 2023 Almost Engineer. All rights reserved.
//

import UIKit

struct MaksymBilyk_PetsViewModel {
    let name: String
    let age: String
    let breedAnimal: String
    let type: MaksymBilyk_AnimalsTypes
    let animal: UIImage
}

let animalItems: [MaksymBilyk_PetsViewModel] = [
    .init(name: "Gary",
          age: "2 years",
          breedAnimal: "Yorkshire Terrier",
          type: .dogs,
          animal: RImage.garyDog()!
         ),
    .init(name: "Peach",
          age: "1.5 years",
          breedAnimal: "Half-breed",
          type: .cats,
          animal: RImage.peachCat()!
         ),
    .init(name: "Whitney",
          age: "4 months",
          breedAnimal: "British Longhair",
          type: .cats,
          animal: RImage.whitheyCat()!
         ),
    .init(name: "Buggy",
          age: "7 months",
          breedAnimal: "Jack Russell Terrier",
          type: .dogs,
          animal: RImage.buggyDog()!
         ),
    .init(name: "Willie",
          age: "2.5 years",
          breedAnimal: "Samoyed",
          type: .dogs,
          animal: RImage.willieDog()!
         ),
    .init(name: "Kiwi",
          age: "2 years",
          breedAnimal: "Yorkshire Terrier",
          type: .dogs,
          animal: RImage.kiwiDog()!
         ),
    .init(name: "Stitch",
          age: "1 year",
          breedAnimal: "European cat",
          type: .cats,
          animal: RImage.stitchCat()!
         ),
    .init(name: "Cake",
          age: "2 months",
          breedAnimal: "Welsh Corgi",
          type: .dogs,
          animal: RImage.cakeDog()!
         ),
    .init(name: "Moon",
          age: "3 year",
          breedAnimal: "Siberian cat",
          type: .cats,
          animal: RImage.moonCat()!
         ),
    .init(name: "Spike",
          age: "2 years",
          breedAnimal: "Maine Coon",
          type: .cats,
          animal: RImage.spikeCat()!
         ),
]
