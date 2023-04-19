import Foundation
import UIKit.UIImage

enum PetType: Int, CaseIterable {
    case allPets
    case cats
    case dogs
    
    var title: String {
        switch self {
        case .allPets:
            return "All"
        case .cats:
            return "Cats"
        case .dogs:
            return "Dogs"
        }
    }
}

struct Pet {
    let icon: UIImage
    let name: String
    let breed: String
    var age: String
    let type: PetType
}

struct YeYa_PetFilter {
    let icon: UIImage
    let title: String
    let type: PetType
}

let itemPets: [Pet] = [
    .init(icon: RImage.garyDog()!,
          name: "Gary",
          breed: "Yorkshire Terrier",
          age: "3 years",
          type: .dogs),
    .init(icon: RImage.peachCat()!,
          name: "Peach",
          breed: "Half-Breed",
          age: "2.5 years",
          type: .cats),
    .init(icon: RImage.whitheyCat()!,
          name: "Whitney",
          breed: "British Longhair",
          age: "2 months",
          type: .cats)
]

let itemFilters: [YeYa_PetFilter] = [
    .init(icon: RImage.allPet()!, title: "All", type: .allPets),
    .init(icon: RImage.dogPet()!, title: "Dog",  type: .dogs),
    .init(icon: RImage.catPet()!, title: "Cat",  type: .cats)
]
