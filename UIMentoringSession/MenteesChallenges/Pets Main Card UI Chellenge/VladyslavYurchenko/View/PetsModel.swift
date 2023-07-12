import Foundation
import UIKit

struct VladyslavYurchenko_PetModel {
    let name: String
    var age: String
    let breed: String
    let animal: UIImage
    let type: VladyslavYurchenko_FilterType
    let skills: String
    let weight: String
    let description: String
}

let petsView: [VladyslavYurchenko_PetModel] = [
    .init(name: "Gary",
          age: "3 years",
          breed: "Yorkshire Terrier",
          animal: RImage.garyDog()!,
          type: .dog,
          skills: "Knows the commands",
          weight: "19 kg",
          description: "Friendly dog, he loves children very much. He likes to play balls, is friends with other animals. Faithful friend and comrade."
         ),
    .init(name: "Peach",
          age: "2.5 years",
          breed: "Half-breed",
          animal: RImage.peachCat()!,
          type: .cat,
          skills: "Knows the commands",
          weight: "9 kg",
          description: "Affectionate cat, loves children very much. He likes to play balls, is friends with other animals."
         ),
    .init(name: "Whitney",
          age: "2 months",
          breed: "British Longhair",
          animal: RImage.whitheyCat()!,
          type: .cat,
          skills: "Knows the commands",
          weight: "12 kg",
          description: "Affectionate cat, loves children very much. He likes to play balls, is friends with other animals."
         ),
    .init(name: "Buggy",
          age: "4 months",
          breed: "Jack Russell Terrier",
          animal: RImage.buggyDog()!,
          type: .dog,
          skills: "Knows the commands",
          weight: "18 kg",
          description: "Friendly dog, he loves children very much. He likes to play balls, is friends with other animals. Faithful friend and comrade."
         ),
    .init(name: "Willie",
          age: "1.5 years",
          breed: "Samoyed",
          animal: RImage.willieDog()!,
          type: .dog,
          skills: "Knows the commands",
          weight: "23 kg",
          description: "The kindest Samoyed we've ever met. Likes to play with balls, is friends with other animals. Despite the white color, he loves rain and puddles."
         ),
    .init(name: "Kiwi",
          age: "1 years",
          breed: "Yorkshire Terrier",
          animal: RImage.kiwiDog()!,
          type: .dog,
          skills: "Knows the commands",
          weight: "15 kg",
          description: "Good dog, he loves children very much. He likes to play balls, is friends with other animals. Faithful friend and comrade."
         ),
    .init(name: "Stitch",
          age: "1 year",
          breed: "European cat",
          animal: RImage.stitchCat()!,
          type: .cat,
          skills: "Knows the commands",
          weight: "11 kg",
          description: "Affectionate cat, loves children very much. He likes to play balls, is friends with other animals."
         ),
    .init(name: "Cake",
          age: "2 months",
          breed: "Welsh Corgi",
          animal: RImage.cakeDog()!,
          type: .dog,
          skills: "Knows the commands",
          weight: "21 kg",
          description: "Good dog, he loves children very much. He likes to play balls, is friends with other animals. Faithful friend and comrade."
         ),
    .init(name: "Moon",
          age: "2.5 years",
          breed: "Siberian cat",
          animal: RImage.moonCat()!,
          type: .cat,
          skills: "Knows the commands",
          weight: "9 kg",
          description: "Affectionate cat, loves children very much. He likes to play balls, is friends with other animals."
         ),
    .init(name: "Spike",
          age: "1.5 years",
          breed: "Maine Coon",
          animal: RImage.spikeCat()!,
          type: .cat,
          skills: "Knows the commands",
          weight: "8 kg",
          description: "Good dog, he loves children very much. He likes to play balls, is friends with other animals. Faithful friend and comrade."
         ),
]
