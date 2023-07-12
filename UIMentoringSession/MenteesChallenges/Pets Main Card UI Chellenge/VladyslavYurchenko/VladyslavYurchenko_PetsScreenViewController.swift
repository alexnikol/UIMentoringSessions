import UIKit

final class VladyslavYurchenko_PetsScreenViewController: UIViewController {
    @IBOutlet weak var petsCollectionView: UICollectionView!
    @IBOutlet weak var filterCollectionView: UICollectionView!
    private var allAnimals: [VladyslavYurchenko_PetModel] = []
    private var filtersAnimals: [VladyslavYurchenko_PetModel] = []
    private var filters: [VladyslavYurchenko_FilterViewModel] = []
    private var filtersSelection: VladyslavYurchenko_FilterType = .all
    private var petScreenView: [VladyslavYurchenko_PetSecondScreenModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        petsCollectionView.register(UINib(nibName: RNib.petsCollectionViewCell.name, bundle: nil), forCellWithReuseIdentifier: RNib.petsCollectionViewCell.name)
        petsCollectionView.dataSource = self
        petsCollectionView.delegate = self
        filterCollectionView.register(UINib(nibName: RNib.filterCollectionViewCell.name, bundle: nil), forCellWithReuseIdentifier: RNib.filterCollectionViewCell.name)
        filterCollectionView.dataSource = self
        filterCollectionView.delegate = self
        filtersAnimals = petsView
        allAnimals = petsView
        filters = petsItems
        petScreenView = petCharecteristics
    }
    
    init() {
        super.init(nibName: RNib.vladyslavYurchenko_PetsScreenViewController.name, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

extension VladyslavYurchenko_PetsScreenViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == filterCollectionView {
            return filters.count
        } else if collectionView == petsCollectionView {
            return filtersAnimals.count
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == filterCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RNib.filterCollectionViewCell.name, for: indexPath) as! FilterCollectionViewCell
            let filter = filters[indexPath.row]
            let isSelected = filter.type == filtersSelection
            cell.setup(model: filter, isSelected: isSelected)
            return cell
        } else if collectionView == petsCollectionView {
            let pets = filtersAnimals[indexPath.row]
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RNib.petsCollectionViewCell.name, for: indexPath) as! PetsCollectionViewCell
            cell.setup(model: pets)
            return cell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == filterCollectionView {
            let filter = filters[indexPath.row]
            filtersSelection = filter.type
            switch filter.type {
            case .all:
                filtersAnimals = allAnimals
            case .dog, .cat:
                filtersAnimals = allAnimals.filter { $0.type == filter.type }
            }
            filterCollectionView.reloadData()
            petsCollectionView.reloadData()
        } else if collectionView == petsCollectionView {
            let item = petScreenView[indexPath.row]
            let petCard = VladyslavYurchenko_PetCardViewController(petScreen: item)
            navigationController?.pushViewController(petCard, animated: true)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == filterCollectionView {
            let filterTitle = filters[indexPath.row].title
            let labelWidth = filterTitle.widthOfString(usingFont: .systemFont(ofSize: 16))
            let width: CGFloat = 10 + 32 + 12 + 15 + 1 + labelWidth
            return CGSize(width: width, height: 52.0)
        } else if collectionView == petsCollectionView {
            let width = (UIScreen.main.bounds.width - 48) / 2
            let heigth = width / 163.0 * 192.0
            return CGSize(width: width, height: heigth)
        }
        return .zero
    }
}
