import UIKit

final class YeYaReadingNowTableViewCell: UITableViewCell {
    @IBOutlet private weak var bookCollectionView: UICollectionView!
    var books: [YeYaBookModel] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        bookCollectionView.register(UINib(nibName: String(describing: YeYaReadingNowCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: YeYaReadingNowCollectionViewCell.self))
        bookCollectionView.dataSource = self
        bookCollectionView.delegate = self
    }
}

extension YeYaReadingNowTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return books.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == bookCollectionView {
            let book = books[indexPath.row]
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: YeYaReadingNowCollectionViewCell.self), for: indexPath) as! YeYaReadingNowCollectionViewCell
            cell.setup(model: book)
            return cell
        } else {
            return UICollectionViewCell()
        }
        
    }
}
