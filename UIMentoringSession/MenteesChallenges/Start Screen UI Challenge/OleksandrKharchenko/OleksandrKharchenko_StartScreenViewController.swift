//  Copyright © 2023 Almost Engineer. All rights reserved.

import UIKit

class OleksandrKharchenko_StartScreenViewController: UIViewController {

    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var centralLabel: UILabel!
    @IBOutlet weak var LetsGoButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        LetsGoButton.layer.cornerRadius = 28
    }
}
