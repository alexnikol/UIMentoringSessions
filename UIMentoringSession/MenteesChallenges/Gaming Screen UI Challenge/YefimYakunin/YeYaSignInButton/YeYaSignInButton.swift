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
        if #available(iOS 15, *) {
            var configuration = UIButton.Configuration.filled()
            let spacing: CGFloat = 20.0
            let availableWidth = self.bounds.width - spacing - imageView!.bounds.width - titleLabel!.intrinsicContentSize.width
            configuration.contentInsets = NSDirectionalEdgeInsets(top: 0.0, leading: 20.0, bottom: 0.0, trailing: spacing)
            if availableWidth < 0 {
                contentHorizontalAlignment = .center
            } else {
                contentHorizontalAlignment = .left
                let xOffset = (self.bounds.width - titleLabel!.intrinsicContentSize.width) / 2.0
                titleLabel?.frame.origin.x = xOffset
                imageView?.frame.origin.x = configuration.contentInsets.leading
            }
        } else {
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
    }
    
    private func setup(){
        layer.cornerRadius = 25.0
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
        clipsToBounds = true
        backgroundColor = UIColor.white.withAlphaComponent(0.1)
        
        if #available(iOS 15, *) {
            var configuration = UIButton.Configuration.tinted()
            configuration.contentInsets = NSDirectionalEdgeInsets(top: 14, leading: 0, bottom: 14, trailing: 0)
            self.configuration = configuration
        } else {
            let button = UIButton(type: .system)
            let insets = UIEdgeInsets(top: 14, left: 0, bottom: 14, right: 0)
            button.contentEdgeInsets = insets
        }
        
    }
    
}
