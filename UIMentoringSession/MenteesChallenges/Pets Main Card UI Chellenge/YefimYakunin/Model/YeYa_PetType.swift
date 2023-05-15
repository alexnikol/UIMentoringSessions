import Foundation

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
