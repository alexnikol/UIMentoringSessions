import UIKit

final class YefimYakunin_MainButton: UIButton {
    
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
        setTitleColor(R.color.descriptionColor(), for: .normal)
        titleLabel?.textColor = R.color.descriptionColor()
        titleLabel?.font = UIFont.systemFont(ofSize: 14.0, weight: .bold)
    }
    
    private func setup() {
        backgroundColor = R.color.buttonColor()
        layer.cornerRadius = 10
    }
}
