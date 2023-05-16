import Foundation
import UIKit.UIImage

struct YeYa_PetFilterModel {
    let icon: UIImage
    let title: String
    let type: YeYa_PetType
}

let itemsFilters: [YeYa_PetFilterModel] = [
    .init(icon: RImage.allPet()!,
          title: "All",
          type: .allPets
         ),
    .init(icon: RImage.dogPet()!,
          title: "Dog",
          type: .dogs
         ),
    .init(icon: RImage.catPet()!,
          title: "Cat",
          type: .cats
         )
]
