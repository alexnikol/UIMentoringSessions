import UIKit

final class YeYaSignInButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let spacing: CGFloat = 20.0
        let availableWidth = self.bounds.width - spacing - imageView!.bounds.width - titleLabel!.intrinsicContentSize.width
        imageEdgeInsets = UIEdgeInsets(top: 0.0, left: 20.0, bottom: 0.0, right: spacing)
        if availableWidth < 0 {
            contentHorizontalAlignment = .center
        } else {
            contentHorizontalAlignment = .left
            let xOffset = (self.bounds.width - titleLabel!.intrinsicContentSize.width) / 2.0
            titleLabel?.frame.origin.x = xOffset
            imageView?.frame.origin.x = imageEdgeInsets.left
        }
    }
    
    private func setup() {
        var configuration = UIButton.Configuration.tinted()
        layer.cornerRadius = 25.0
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
        clipsToBounds = true
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 14, leading: 0, bottom: 14, trailing: 0)
        backgroundColor = UIColor.white.withAlphaComponent(0.1)
        self.configuration = configuration
    }
}
