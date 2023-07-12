import Foundation
import UIKit

struct VladyslavYurchenko_PetSecondScreenModel {
    let name: String
    let age: String
    let photo: UIImage
    let skills: String
    let weight: String
    let description: String
    let update: String
}

let petCharecteristics: [VladyslavYurchenko_PetSecondScreenModel] = [
    .init(name: "Yorkshire Terrier Gary",
          age: "3 years",
          photo: RImage.garyDog()!,
          skills: "Knows the commands",
          weight: "19 kg",
          description: "Friendly dog, he loves children very much. He likes to play balls, is friends with other animals. Faithful friend and comrade.",
          update: "Update date: March 5"
         ),
    .init(name: "Half-breed Peach",
          age: "2.5 years",
          photo: RImage.peachCat()!,
          skills: "Knows the commands",
          weight: "9 kg",
          description: "Affectionate cat, loves children very much. He likes to play balls, is friends with other animals.",
          update: "Update date: March 28"
         ),
    .init(name: "British Longhair Whitney",
          age: "2 months",
          photo: RImage.whitheyCat()!,
          skills: "Knows the commands",
          weight: "12 kg",
          description: "Affectionate cat, loves children very much. He likes to play balls, is friends with other animals.",
          update: "Update date: July 1"
         ),
    .init(name: "Jack Russell Terrier Buggy ",
          age: "4 months",
          photo: RImage.buggyDog()!,
          skills: "Knows the commands",
          weight: "18 kg",
          description: "Friendly dog, he loves children very much. He likes to play balls, is friends with other animals. Faithful friend and comrade.",
          update: "Update date: August 7"
         ),
    .init(name: "Samoyed Willie",
          age: "1.5 years",
          photo: RImage.petSamoyedWillieDog()!,
          skills: "Knows the commands",
          weight: "23 kg",
          description: "The kindest Samoyed we've ever met. Likes to play with balls, is friends with other animals. Despite the white color, he loves rain and puddles.",
          update: "Update date: December 6"
         ),
    .init(name: "Yorkshire Terrier Kiwi",
          age: "1 years",
          photo: RImage.kiwiDog()!,
          skills: "Knows the commands",
          weight: "15 kg",
          description: "Good dog, he loves children very much. He likes to play balls, is friends with other animals. Faithful friend and comrade.",
          update: "Update date: November 19"
         ),
    .init(name: "European cat Stitch",
          age: "1 year",
          photo: RImage.stitchCat()!,
          skills: "Knows the commands",
          weight: "11 kg",
          description: "Affectionate cat, loves children very much. He likes to play balls, is friends with other animals.",
          update: "Update date: February 22"
         ),
    .init(name: "Welsh Corgi Cake",
          age: "2 months",
          photo: RImage.cakeDog()!,
          skills: "Knows the commands",
          weight: "21 kg",
          description: "Good dog, he loves children very much. He likes to play balls, is friends with other animals. Faithful friend and comrade.",
          update: "Update date: December 10"
         ),
    .init(name: "Siberian cat Moon",
          age: "2.5 years",
          photo: RImage.moonCat()!,
          skills: "Knows the commands",
          weight: "9 kg",
          description: "Affectionate cat, loves children very much. He likes to play balls, is friends with other animals.",
          update: "Update date: May 15"
         ),
    .init(name: "Maine Coon Spike",
          age: "1.5 years",
          photo: RImage.spikeCat()!,
          skills: "Knows the commands",
          weight: "8 kg",
          description: "Good dog, he loves children very much. He likes to play balls, is friends with other animals. Faithful friend and comrade.",
          update: "Update date: January 4"
         ),
]
