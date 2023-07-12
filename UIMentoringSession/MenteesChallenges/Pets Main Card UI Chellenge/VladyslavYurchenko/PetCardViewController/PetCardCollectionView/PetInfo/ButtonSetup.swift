import Foundation
import UIKit

final class VladyslavYurchenko_Button: UIButton {
   
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    func setupButton() {
        layer.cornerRadius = 29
        layer.borderColor = UIColor.black.cgColor
        layer.borderWidth = 1
        backgroundColor = RColor.petSelectColor()!
    }
}
