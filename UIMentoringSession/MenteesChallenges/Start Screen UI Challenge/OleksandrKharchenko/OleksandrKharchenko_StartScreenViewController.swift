//  Copyright © 2023 Almost Engineer. All rights reserved.

import UIKit

final class OleksandrKharchenko_StartScreenViewController: UIViewController {
    @IBOutlet weak var centralLabel: UILabel!
    @IBOutlet weak var letsGoButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        centralLabel.text = "Happiness is closer \nthan you think"
        letsGoButton.setTitle("Let's Go!", for: .normal)
        letsGoButton.layer.cornerRadius = 28
    }
}
