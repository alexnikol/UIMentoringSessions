import Foundation
import UIKit

struct VladyslavYurchenko_PetModel {
    let name: String
    var age: String
    let breed: String
    let animal: UIImage
    let type: VladyslavYurchenko_FilterType
}

let petsView: [VladyslavYurchenko_PetModel] = [
    .init(name: "Gary",
          age: "3 years",
          breed: "Yorkshire Terrier",
          animal: RImage.buggyDog()!,
          type: .dog
         ),
    .init(name: "Peach",
          age: "2.5 years",
          breed: "Half-breed",
          animal: RImage.peachCat()!,
          type: .cat
         ),
    .init(name: "Whitney",
          age: "2 months",
          breed: "British Longhair",
          animal: RImage.whitheyCat()!,
          type: .cat
         ),
    .init(name: "Buggy",
          age: "4 months",
          breed: "Jack Russell Terrier",
          animal: RImage.buggyDog()!,
          type: .dog
         ),
    .init(name: "Willie",
          age: "1.5 years",
          breed: "Samoyed",
          animal: RImage.willieDog()!,
          type: .dog
         ),
    .init(name: "Kiwi",
          age: "1 years",
          breed: "Yorkshire Terrier",
          animal: RImage.kiwiDog()!,
          type: .dog
         ),
    .init(name: "Stitch",
          age: "1 year",
          breed: "European cat",
          animal: RImage.stitchCat()!,
          type: .cat
         ),
    .init(name: "Cake",
          age: "2 months",
          breed: "Welsh Corgi",
          animal: RImage.cakeDog()!,
          type: .dog
         ),
    .init(name: "Moon",
          age: "2.5 years",
          breed: "Siberian cat",
          animal: RImage.moonCat()!,
          type: .cat
         ),
    .init(name: "Spike",
          age: "1.5 years",
          breed: "Maine Coon",
          animal: RImage.spikeCat()!,
          type: .cat
         ),
]
