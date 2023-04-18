import Foundation
import UIKit

struct OlKha_FilterViewModel {
    let title: String
    let type: AnimalsTypes
    let animal: UIImage
}

let itemsFilter: [OlKha_FilterViewModel] = [
    .init(title: "All",
          type: .allPets,
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
