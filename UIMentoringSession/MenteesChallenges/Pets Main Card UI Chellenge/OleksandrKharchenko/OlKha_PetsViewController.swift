import UIKit

final class OlKha_PetsViewController: UIViewController {
    @IBOutlet private weak var animalsCollectionView: UICollectionView!
    @IBOutlet private weak var filterCollectionView: UICollectionView!
    private var allAnimals: [OlKha_PetsViewModel] = []
    private var filteredAnimals: [OlKha_PetsViewModel] = []
    private var filters: [OlKha_FilterViewModel] = []
    private var selectedFilterType: AnimalsTypes = .allPets
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = RColor.petWhiteColor()
        allAnimals = itemsAnimals
        filteredAnimals = itemsAnimals
        filters = itemsFilter
        configureFilterCollection()
        configureAnimalsCollection()
    }
    
    init() {
        super.init(nibName: RNib.olKha_PetsViewController.name, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

extension OlKha_PetsViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == filterCollectionView {
            return filters.count
        } else if collectionView == animalsCollectionView {
            return filteredAnimals.count
        } else {
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == filterCollectionView {
            let filter = filters[indexPath.row]
            let cell = filterCollectionView.dequeueReusableCell(withReuseIdentifier: RNib.olkha_FilterAnimalsCell, for: indexPath)!
            let isSelected = filter.type == selectedFilterType
            cell.setup(model: filter, isSelected: isSelected)
            return cell
        } else if collectionView == animalsCollectionView {
            let pets = filteredAnimals[indexPath.row]
            let cell = animalsCollectionView.dequeueReusableCell(withReuseIdentifier: RNib.olkha_AnimalsCell, for: indexPath)!
            cell.setup(model: pets)
            return cell
        } else {
            return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == filterCollectionView {
            let filter = filters[indexPath.row]
            selectedFilterType = filter.type
            filterCollectionView.reloadData()
            filterCollectionView.scrollToItem(at: indexPath, at:.centeredHorizontally, animated: true)
            switch filter.type {
            case .allPets:
                filteredAnimals = allAnimals
            case .cats, .dogs:
                filteredAnimals = allAnimals.filter { $0.type == filter.type }
            }
            animalsCollectionView.reloadData()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == filterCollectionView {
            return CGSize(width: 99, height: 52)
        } else if collectionView == animalsCollectionView {
            let widht = (UIScreen.main.bounds.width - 48) / 2
            let heigth = widht / 163 * 192
            return CGSize(width: widht, height: heigth)
        } else {
            return .zero
        }
    }

    private func configureAnimalsCollection() {
        animalsCollectionView.backgroundColor = RColor.petWhiteColor()
        animalsCollectionView.register(RNib.olkha_AnimalsCell)
        animalsCollectionView.dataSource = self
        animalsCollectionView.delegate = self
        animalsCollectionView.showsVerticalScrollIndicator = false
    }
    
    private func configureFilterCollection() {
        filterCollectionView.backgroundColor = RColor.petWhiteColor()
        filterCollectionView.register(RNib.olkha_FilterAnimalsCell)
        filterCollectionView.dataSource = self
        filterCollectionView.delegate = self
        filterCollectionView.showsHorizontalScrollIndicator = false
    }
}
