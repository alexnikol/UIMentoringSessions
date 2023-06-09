import UIKit

final class YeYaReadingNowCollectionViewCell: UICollectionViewCell {
    @IBOutlet private weak var shadowView: UIView!
    @IBOutlet private weak var readingNowView: UIView!
    @IBOutlet private weak var currentAndRecent: UILabel!
    @IBOutlet private weak var bookImage: UIImageView!
    @IBOutlet private weak var titleBookLabel: UILabel!
    @IBOutlet private weak var authorBookLabel: UILabel!
    @IBOutlet private weak var progressLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupLayout()
    }
    
    func setup(model book: YeYaBookModel) {
        bookImage.image = book.imageCover
        titleBookLabel.text = book.title
        authorBookLabel.text = book.author
        progressLabel.text = String(book.chipOfProgress)
    }
    
    private func setupLayout() {
        readingNowView.backgroundColor = RColor.background()
        shadowView.layer.shadowColor = UIColor.gray.cgColor
        shadowView.layer.shadowOffset = CGSize(width: 5, height: 5)
        shadowView.layer.shadowRadius = 3
        shadowView.layer.shadowOpacity = 0.1
        shadowView.layer.masksToBounds = false
    }
}
