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
        titleLabel?.font = UIFont.systemFont(ofSize: 15.0, weight: .semibold)
        // Устанавливаем отступ для иконки и текста
        imageView
        
    }
    
    private func setup() {
        layer.cornerRadius = 10.0
        layer.borderWidth = 1.0
        layer.borderColor = UIColor.white.cgColor
    }
}
