//
//  MaksymBilyk_PetsViewController.swift
//  UIMentoringSession
//
//  Created by Maxos on 5/29/23.
//  Copyright © 2023 Almost Engineer. All rights reserved.
//

import UIKit

final class MaksymBilyk_PetsViewController: UIViewController {
    @IBOutlet private weak var filterCollectionView: UICollectionView!
    @IBOutlet private weak var petsCollectionView: UICollectionView!
    private var allPets: [MaksymBilyk_PetsViewModel] = []
    private var filterePets: [MaksymBilyk_PetsViewModel] = []
    private var filters: [MaksymBiylk_FilterViewModel] = []
    private var selectedType: MaksymBilyk_AnimalsTypes = .Pets
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    init() {
        super.init(nibName: String(describing: MaksymBilyk_PetsViewController.self), bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
