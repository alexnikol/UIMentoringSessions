import Foundation
import UIKit

struct OlKha_PetsViewModel {
    let name: String
    let age: String
    let breadAnimal: String
    let type: AnimalsTypes
    let animal: UIImage
}

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

let itemsAnimals: [OlKha_PetsViewModel] = [
    .init(name: "Gary",
          age: "3 years",
          breadAnimal: "Yorkshire Terrier",
          type: .dogs,
          animal: RImage.garyDog()!
         ),
    .init(name: "Peach",
          age: "2.5 years",
          breadAnimal: "Half-breed",
          type: .cats,
          animal: RImage.peachCat()!
         ),
    .init(name: "Whitney",
          age: "2 months",
          breadAnimal: "British Longhair",
          type: .cats,
          animal: RImage.whitheyCat()!
         ),
    .init(name: "Buggy",
          age: "4 months",
          breadAnimal: "Jack Russell Terrier",
          type: .dogs,
          animal: RImage.buggyDog()!
         ),
    .init(name: "Willie",
          age: "1.5 years",
          breadAnimal: "Samoyed",
          type: .dogs,
          animal: RImage.willieDog()!
         ),
    .init(name: "Kiwi",
          age: "1 years",
          breadAnimal: "Yorkshire Terrier",
          type: .dogs,
          animal: RImage.kiwiDog()!
         ),
    .init(name: "Stitch",
          age: "1 year",
          breadAnimal: "European cat",
          type: .cats,
          animal: RImage.stitchCat()!
         ),
    .init(name: "Cake",
          age: "2 months",
          breadAnimal: "Welsh Corgi",
          type: .dogs,
          animal: RImage.cakeDog()!
         ),
    .init(name: "Moon",
          age: "2.5 years",
          breadAnimal: "Siberian cat",
          type: .cats,
          animal: RImage.moonCat()!
         ),
    .init(name: "Spike",
          age: "1.5 years",
          breadAnimal: "Maine Coon",
          type: .cats,
          animal: RImage.spikeCat()!
         ),
]
