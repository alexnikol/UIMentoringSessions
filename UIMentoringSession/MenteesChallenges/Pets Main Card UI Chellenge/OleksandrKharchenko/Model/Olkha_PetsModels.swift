import Foundation
import UIKit

struct OlKha_PetsViewModel {
    let name: String
    let age: String
    let breedAnimal: String
    let type: AnimalsTypes
    let animal: UIImage
}

let itemsAnimals: [OlKha_PetsViewModel] = [
    .init(name: "Gary",
          age: "3 years",
          breedAnimal: "Yorkshire Terrier",
          type: .dogs,
          animal: RImage.garyDog()!
         ),
    .init(name: "Peach",
          age: "2.5 years",
          breedAnimal: "Half-breed",
          type: .cats,
          animal: RImage.peachCat()!
         ),
    .init(name: "Whitney",
          age: "2 months",
          breedAnimal: "British Longhair",
          type: .cats,
          animal: RImage.whitheyCat()!
         ),
    .init(name: "Buggy",
          age: "4 months",
          breedAnimal: "Jack Russell Terrier",
          type: .dogs,
          animal: RImage.buggyDog()!
         ),
    .init(name: "Willie",
          age: "1.5 years",
          breedAnimal: "Samoyed",
          type: .dogs,
          animal: RImage.willieDog()!
         ),
    .init(name: "Kiwi",
          age: "1 years",
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
          age: "2.5 years",
          breedAnimal: "Siberian cat",
          type: .cats,
          animal: RImage.moonCat()!
         ),
    .init(name: "Spike",
          age: "1.5 years",
          breedAnimal: "Maine Coon",
          type: .cats,
          animal: RImage.spikeCat()!
         ),
]
