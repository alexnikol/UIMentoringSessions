import UIKit

final class YeYa_IOSNewsViewController: UIViewController {
    
    @IBOutlet private weak var tableView: UITableView!
    private var books: [YeYaBookModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = RColor.background()
        tableView.separatorStyle = .none
        
        let cellNib = UINib(nibName: "YeYa_ReadingNowTableViewCell", bundle: nil)
        self.tableView.register(cellNib, forCellReuseIdentifier: "tableviewcellid")
        books = getMockBookItems()
    }
}

func getMockBookItems() -> [YeYaBookModel] {
    let itemsBooks: [YeYaBookModel] = [
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
        .init(imageCover: RImage.bookTreasure()!,
              title: "The Treasure Island",
              author: "Robert Louis Stevenson",
              genre: .Roman,
              chipOfProgress: 28,
              bestseller: true),
        .init(imageCover: RImage.bookGulliverS()!,
              title: "Gulliver’s Travels",
              author: "Jonathan Swift",
              genre: .Roman,
              chipOfProgress: 28,
              bestseller: true),
        .init(imageCover: RImage.bookAnna()!,
              title: "Anna Karenina",
              author: "Leo Tolstoy",
              genre: .Roman,
              chipOfProgress: 28,
              bestseller: true),
        .init(imageCover: RImage.booklliad()!,
              title: "The Iliad",
              author: "Homer",
              genre: .Roman,
              chipOfProgress: 28,
              bestseller: true),
        .init(imageCover: RImage.bookHobbit()!,
              title: "The Hobbit",
              author: " J.R.R. Tolkie",
              genre: .Roman,
              chipOfProgress: 28,
              bestseller: true),
        .init(imageCover: RImage.bookKillaMockingbird()!,
              title: "To Kill a Mockingbird",
              author: "Harper Lee",
              genre: .Roman,
              chipOfProgress: 28,
              bestseller: true),
        .init(imageCover: RImage.bookGabrielGarciaMarouez()!,
              title: "One Hundred Years of Solitude",
              author: "Gabriel Garcia Marouez",
              genre: .Roman,
              chipOfProgress: 28,
              bestseller: true),
        .init(imageCover: RImage.bookStephenKing()!,
              title: "IT",
              author: "Stephen King",
              genre: .Roman,
              chipOfProgress: 28,
              bestseller: true)
    ]
    return itemsBooks
}

