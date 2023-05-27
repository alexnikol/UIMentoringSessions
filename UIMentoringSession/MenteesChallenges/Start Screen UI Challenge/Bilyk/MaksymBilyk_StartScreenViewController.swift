//
//  MaksymBilyk_StartScreenViewController.swift
//  UIMentoringSession
//
//  Created by Maxos on 5/24/23.
//  Copyright © 2023 Almost Engineer. All rights reserved.
//

import UIKit

final class MaksymBilyk_StartScreenViewController: UIViewController {
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var letsGoButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        descriptionLabel.text = RText.startScreenLabel()
        letsGoButton.layer.cornerRadius = 20
        letsGoButton.backgroundColor = RColor.letSGoButtonColor()
        letsGoButton.tintColor = UIColor.white
    }
    
    init() {
        super.init(nibName: String(describing: MaksymBilyk_StartScreenViewController.self), bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
