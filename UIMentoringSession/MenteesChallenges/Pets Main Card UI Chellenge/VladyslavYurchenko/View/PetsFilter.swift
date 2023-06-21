import Foundation
import UIKit

enum VladyslavYurchenko_FilterType: CaseIterable {
    case all
    case dog
    case cat
    
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
}
