import Foundation
import UIKit.UIImage

enum YeYa_PetType: Int, CaseIterable {
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

struct YeYa_Pet {
    let icon: UIImage
    let name: String
    let breed: String
    var age: String
    let type: YeYa_PetType
}

struct YeYa_PetFilter {
    let icon: UIImage
    let title: String
    let type: YeYa_PetType
}
