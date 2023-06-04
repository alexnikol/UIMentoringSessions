import UIKit

final class YeYa_IOSNewsViewController: UIViewController {
    
    @IBOutlet private weak var tableView: UITableView!
    private var books: [YeYa_BookModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        books = getMockBookItems()
    }
}

func getMockBookItems() -> [YeYa_BookModel] {
    let itemsBooks: [YeYa_BookModel] = [
        .init(imageCover: RImage.bookCrime()!,
              title: "Crime and Punishment",
              author: "Fyodor Dostoyevsky",
              genre: .Roman,
              chipOfProgress: 15,
              bestseller: true),
        .init(imageCover: RImage.bookWuthering()!,
              title: "Wuthering Heights",
              author: "Emily Brontë",
              genre: .Roman,
              chipOfProgress: 15,
              bestseller: true),
        .init(imageCover: RImage.bookGreat()!,
              title: "Great Expectations",
              author: "Charles Dickens",
              genre: .Roman,
              chipOfProgress: 28,
              bestseller: true),
        .init(imageCover: RImage.bookTreasure()!, title: "The Treasure Island", author: "Robert Louis Stevenson", chipOfProgress: "3%"),
        .init(imageCover: RImage.bookGulliverS()!, title: "Gulliver’s Travels", author: "Jonathan Swift", chipOfProgress: "15%"),
        .init(imageCover: RImage.bookAnna()!, title: "Anna Karenina", author: "Leo Tolstoy", chipOfProgress: "15%"),
        .init(imageCover: RImage.booklliad()!, title: "The Iliad", author: "Homer", chipOfProgress: "15%"),
        .init(imageCover: RImage.bookHobbit()!, title: "The Hobbit", author: " J.R.R. Tolkie", chipOfProgress: "3%"),
        .init(imageCover: RImage.bookKillaMockingbird()!, title: "To Kill a Mockingbird", author: "Harper Lee", chipOfProgress: "15%"),
        .init(imageCover: RImage.bookGabrielGarciaMarouez()!, title: "One Hundred Years of Solitude", author: "Gabriel Garcia Marouez", chipOfProgress: "15%"),
        .init(imageCover: RImage.bookStephenKing()!, title: "IT", author: "Stephen King", chipOfProgress: "15%"),
    ]
    return itemsBooks
}

