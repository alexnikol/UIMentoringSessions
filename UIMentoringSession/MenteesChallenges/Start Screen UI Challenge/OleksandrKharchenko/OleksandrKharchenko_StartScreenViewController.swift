//  Copyright © 2023 Almost Engineer. All rights reserved.

import UIKit

class OleksandrKharchenko_StartScreenViewController: UIViewController {

    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var centralLabel: UILabel!
    @IBOutlet weak var letsGoButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        letsGoButton.layer.cornerRadius = 28
    }
}
