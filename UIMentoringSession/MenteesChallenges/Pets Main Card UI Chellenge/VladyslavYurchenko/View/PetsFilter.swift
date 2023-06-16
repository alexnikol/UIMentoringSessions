import Foundation
import UIKit

enum VladyslavYurchenko_FilterType {
    case all, dog, cat
    
    var title: String {
        switch self {
        case .all:
            return "All"
        case .dog:
            return "Dog"
        case .cat:
            return "Cat"
        }
    }
    
    var image: UIImage {
        switch self {
        case .all:
            return RImage.allPet()!
        case .dog:
            return RImage.dogPet()!
        case .cat:
            return RImage.catPet()!
        }
    }
}
