import Foundation
import UIKit

enum AnimalsTypes: Int, CaseIterable {
    case allPets = 0
    case cats = 1
    case dogs = 2
    
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
