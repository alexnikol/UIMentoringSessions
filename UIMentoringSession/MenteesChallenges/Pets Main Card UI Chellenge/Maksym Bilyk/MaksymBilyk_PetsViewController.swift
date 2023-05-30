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
    private var filteredPets: [MaksymBilyk_PetsViewModel] = []
    private var filters: [MaksymBiylk_FilterViewModel] = []
    private var selectedType: MaksymBilyk_AnimalsTypes = .Pets
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = RColor.petWhiteColor()
        allPets = animalItems
        filteredPets = animalItems
        filters = filterItems
        setupPetCollectionView()
        setupFilterCollectionView()
    }
    
    init() {
        super.init(nibName: String(describing: MaksymBilyk_PetsViewController.self), bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

extension MaksymBilyk_PetsViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == filterCollectionView {
            return filters.count
        } else if collectionView == petsCollectionView {
            return filteredPets.count
        } else {
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == filterCollectionView {
            let filter = filters[indexPath.row]
            let cell = filterCollectionView.dequeueReusableCell(withReuseIdentifier: RNib.maksymBilyk_FilterPetsCell, for: indexPath)!
            let isSelected = filter.type == selectedType
            cell.setup(model: filter,
                       isSelected: isSelected)
            return cell
        } else if collectionView == petsCollectionView {
            let pets = filteredPets[indexPath.row]
            let cell = petsCollectionView.dequeueReusableCell(withReuseIdentifier: RNib.maksymBilyk_AnimalsCell,
                                                              for: indexPath)!
            cell.setup(model: pets)
            return cell
        } else {
            return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == filterCollectionView {
            let filter = filters[indexPath.row]
            selectedType = filter.type
            filterCollectionView.reloadData()
            filterCollectionView.scrollToItem(at: indexPath,
                                              at: .centeredHorizontally,
                                              animated: true)
            switch filter.type {
            case .Pets:
                filteredPets = allPets
            case .cats, .dogs:
                filteredPets = allPets.filter { $0.type == filter.type }
            }
            petsCollectionView.reloadData()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == filterCollectionView {
            return CGSize(width: 99, height: 52)
        } else if collectionView == petsCollectionView {
            let widht = (UIScreen.main.bounds.width - 48) / 2
            let height = widht / 163 * 192
            return CGSize(width: widht, height: height)
        } else {
            return .zero
        }
    }
    
    private func setupPetCollectionView() {
        petsCollectionView.backgroundColor = RColor.petWhiteColor()
        petsCollectionView.register(RNib.maksymBilyk_AnimalsCell)
        petsCollectionView.dataSource = self
        petsCollectionView.delegate = self
        petsCollectionView.showsVerticalScrollIndicator = false
    }
    
    private func setupFilterCollectionView() {
        filterCollectionView.backgroundColor = RColor.petWhiteColor()
        filterCollectionView.register(RNib.maksymBilyk_FilterPetsCell)
        filterCollectionView.dataSource = self
        filterCollectionView.delegate = self
        filterCollectionView.showsHorizontalScrollIndicator = false
    }
}

