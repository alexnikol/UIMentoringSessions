import Foundation
import UIKit

enum AnimalsTypes: CaseIterable {
    case allPets
    case cats
    case dogs
    
    var title: String {
        switch self {
        case .allPets:
            return "123"
        case .cats:
            return "123"
        case .dogs:
            return "123"
        }
    }
}
