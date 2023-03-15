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
    }
    
    private func setup() {
        var configuration = UIButton.Configuration.tinted()
        layer.cornerRadius = 25.0
        layer.borderWidth = 1.0
        layer.borderColor = UIColor.white.cgColor
        clipsToBounds = true
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 15, leading: 10, bottom: 15, trailing: 10)
        configuration.imagePadding = 20
        backgroundColor = UIColor.white.withAlphaComponent(0.2)
        self.configuration = configuration
    }
}
