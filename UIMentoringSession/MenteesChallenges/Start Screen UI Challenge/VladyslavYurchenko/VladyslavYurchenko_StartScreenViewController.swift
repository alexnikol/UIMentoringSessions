//
//  VladyslavYurchenko_StartScreenViewController.swift
//  UIMentoringSession
//
//  Created by Владислав Юрченко on 12.04.2023.
//  Copyright © 2023 Almost Engineer. All rights reserved.

import UIKit

final class VladyslavYurchenko_StartScreenViewController: UIViewController {
    @IBOutlet private weak var letsGoButton: UIButton!
    @IBOutlet private weak var happinessLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        letsGoButton.setTitle(RText.startScreenButton(), for: .normal)
        letsGoButton.layer.cornerRadius = 30
        happinessLabel.text = RText.startScreenLabel()
    }
  
    init() {
        super.init(nibName: String(describing: VladyslavYurchenko_StartScreenViewController.self), bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
