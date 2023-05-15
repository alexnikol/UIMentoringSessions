import Foundation
import UIKit.UIImage

struct YeYa_PetModel {
    let icon: UIImage
    let name: String
    let breed: String
    var age: String
    let type: YeYa_PetType
}

let itemsPets: [YeYa_PetModel] = [
    .init(icon: RImage.garyDog()!,
          name: "Gary",
          breed: "Yorkshire Terrier",
          age: "3 years",
          type: .dogs
         ),
    .init(icon: RImage.peachCat()!,
          name: "Peach",
          breed: "Half-breed",
          age: "2.5 years",
          type: .cats
         ),
    .init(icon: RImage.whitheyCat()!,
          name: "Whitney",
          breed: "British Longhair",
          age: "2 months",
          type: .cats
         ),
    .init(icon: RImage.buggyDog()!,
          name: "Buggy",
          breed: "Jack Russell Terrier",
          age: "4 months",
          type: .dogs
         ),
    .init(icon: RImage.willieDog()!,
          name: "Willie",
          breed: "Samoyed",
          age: "1.5 years",
          type: .dogs
         ),
    .init(icon: RImage.kiwiDog()!,
          name: "Kiwi",
          breed: "Yorkshire Terrier",
          age: "1 years",
          type: .dogs
         ),
    .init(icon: RImage.stitchCat()!,
          name: "Stitch",
          breed: "European cat",
          age: "1 year",
          type: .cats
         ),
    .init(icon: RImage.cakeDog()!,
          name: "Cake",
          breed: "Welsh Corgi",
          age: "2 months",
          type: .dogs
         ),
    .init(icon: RImage.moonCat()!,
          name: "Moon",
          breed: "Siberian cat",
          age: "2.5 years",
          type: .cats
         ),
    .init(icon: RImage.spikeCat()!,
          name: "Spike",
          breed: "Maine Coon",
          age: "1.5 years",
          type: .cats
         )
]
