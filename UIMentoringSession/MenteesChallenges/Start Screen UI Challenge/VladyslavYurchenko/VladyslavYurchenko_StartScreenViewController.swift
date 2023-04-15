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
        letsGoButton.setTitle("Let's Go!", for: .normal)
        letsGoButton.layer.cornerRadius = 30
        happinessLabel.text = "Happiness is closer than you think"
        happinessLabel.font = UIFont(name: happinessLabel.font.fontName, size: 35)
    }
    
    @IBAction private func didTabButton(_ sender: Any) {
    }
    
    init() {
        super.init(nibName: "VladyslavYurchenko_StartScreenViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
