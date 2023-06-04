import Foundation

enum YeYa_BookGenre: Int, CaseIterable {
    case Action
    case Classics
    case Adventure
    case Detective
    case Mystery
    case Fantasy
    case Horror
    case FictionLiterary
    case NonFiction
    case ScienceFiction
    case Roman
    
    var genre: String {
        switch self {
        case .Action:
            return "Action"
        case .Classics:
            return "Classics"
        case .Adventure:
            return "Adventure"
        case .Detective:
            return "Detective"
        case .Mystery:
            return "Mystery"
        case .Fantasy:
            return "Fantasy"
        case .Horror:
            return "Horror"
        case .FictionLiterary:
            return "Fiction & Literary"
        case .NonFiction:
            return "Non-Fiction"
        case .ScienceFiction:
            return "Science Fiction"
        case .Roman:
            return "Roman"
        }
    }
}
