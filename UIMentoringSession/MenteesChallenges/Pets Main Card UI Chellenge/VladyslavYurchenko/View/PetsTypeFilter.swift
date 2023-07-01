import Foundation
import UIKit

struct VladyslavYurchenko_FilterViewModel {
    let title: String
    let type: VladyslavYurchenko_FilterType
    let animal: UIImage
}

let petsItems: [VladyslavYurchenko_FilterViewModel] = [
    .init(title: "All",
          type: .all,
          animal: RImage.allPet()!
         ),
    .init(title: "Cat",
          type: .cat,
          animal: RImage.catPet()!
         ),
    .init(title: "Dog",
          type: .dog,
          animal: RImage.dogPet()!
         ),
]
