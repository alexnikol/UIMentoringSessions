import Foundation
import UIKit

struct OlKha_PetsViewModel {
    let name: String
    let age: String
    let breadAnimal: String
    let animal: UIImage
}

struct OlKha_FilterViewModel {
    let type: String
    let animal: UIImage
}

let itemsFilter: [OlKha_FilterViewModel] = [
    .init(type: "All",
          animal: RImage.allPet()!
         ),
    .init(type: "Cat",
          animal: RImage.catPet()!
         ),
    .init(type: "Dog",
          animal: RImage.dogPet()!
         ),
]

//let typeAnimals:

let itemsAnimals: [OlKha_PetsViewModel] = [
    .init(name: "Gary",
          age: "3 years",
          breadAnimal: "Yorkshire Terrier",
          animal: RImage.garyDog()!
         ),
    .init(name: "Peach",
          age: "2.5 years",
          breadAnimal: "Half-breed",
          animal: RImage.peachCat()!
         ),
    .init(name: "Whitney",
          age: "2 months",
          breadAnimal: "British Longhair",
          animal: RImage.whitheyCat()!
         ),
    .init(name: "Buggy",
          age: "4 months",
          breadAnimal: "Jack Russell Terrier",
          animal: RImage.buggyDog()!
         ),
    .init(name: "Willie",
          age: "1.5 years",
          breadAnimal: "Samoyed",
          animal: RImage.willieDog()!
         ),
    .init(name: "Kiwi",
          age: "1 years",
          breadAnimal: "Yorkshire Terrier",
          animal: RImage.kiwiDog()!
         ),
    .init(name: "Stitch",
          age: "1 year",
          breadAnimal: "European cat",
          animal: RImage.peachCat()!
         ),
    .init(name: "Cake",
          age: "2 months",
          breadAnimal: "Welsh Corgi",
          animal: RImage.peachCat()!
         ),
    .init(name: "Moon",
          age: "2.5 years",
          breadAnimal: "Siberian cat",
          animal: RImage.peachCat()!
         ),
    .init(name: "Spike",
          age: "1.5 years",
          breadAnimal: "Maine Coon",
          animal: RImage.peachCat()!
         ),
]
