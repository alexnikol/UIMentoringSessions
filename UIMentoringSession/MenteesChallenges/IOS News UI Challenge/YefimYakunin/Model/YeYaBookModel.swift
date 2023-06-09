import Foundation
import UIKit.UIImage

struct YeYaBookModel {
    let imageCover: UIImage
    let title: String
    let author: String
    let genre: YeYa_BookGenre
    let chipOfProgress: Int
    let bestseller: Bool
}
