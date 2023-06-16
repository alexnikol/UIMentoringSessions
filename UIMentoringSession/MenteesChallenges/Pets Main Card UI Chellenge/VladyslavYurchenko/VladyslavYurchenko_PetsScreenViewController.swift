//
//  VladyslavYurchenko_PetsScreenViewController.swift
//  UIMentoringSession
//
//  Created by Владислав Юрченко on 09.06.2023.
//  Copyright © 2023 Almost Engineer. All rights reserved.
//

import UIKit

final class VladyslavYurchenko_PetsScreenViewController: UIViewController {
    @IBOutlet weak var petsCollectionView: UICollectionView!
    @IBOutlet weak var filterCollectionView: UICollectionView!
    private var filtersAnimals: [VladyslavYurchenko_PetModel] = []
    private var filtersModels: [VladyslavYurchenko_FilterType] = [.all, .dog, .cat]
    override func viewDidLoad() {
        super.viewDidLoad()
        filterCollectionView.dataSource = self
        filterCollectionView.delegate = self
        filtersAnimals = petsView
        filterCollectionView.showsHorizontalScrollIndicator = false
        petsCollectionView.register(UINib(nibName: "PetsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "PetsCollectionViewCell")
        filterCollectionView.register(UINib(nibName: "FilterCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "FilterCollectionViewCell")
        petsCollectionView.dataSource = self
        petsCollectionView.delegate = self
        petsCollectionView.collectionViewLayout = UICollectionViewFlowLayout()
    }
    
    init() {
        super.init(nibName: "VladyslavYurchenko_PetsScreenViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

extension  VladyslavYurchenko_PetsScreenViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == filterCollectionView {
            return filtersModels.count
        } else if collectionView == petsCollectionView {
            return filtersAnimals.count
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == filterCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FilterCollectionViewCell", for: indexPath) as! FilterCollectionViewCell
            let filter = filtersModels[indexPath.row]
            cell.setup(model: filter)
            return cell
        } else if collectionView == petsCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PetsCollectionViewCell", for: indexPath) as! PetsCollectionViewCell
            let pets = filtersAnimals[indexPath.row]
            cell.setup(model: pets)
            return cell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == filterCollectionView {
//            let staticWidth = CGFloat(10 + 32 + 12 + 12 + 1 + 64)
//            let width = (UIScreen.main.bounds.width - 64) / 2
//            let dynamicWidth = filtersModels[indexPath.row].title.widthOfString(usingFont: .systemFont(ofSize: 16))
            return CGSize(width: 99, height: 52)
        } else if collectionView == petsCollectionView {
            let width = (UIScreen.main.bounds.width - 48) / 2
//            let heigth = width / 171 * 200
            return CGSize(width: width, height: 192)
        }
        return .zero
    }
}

extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}
