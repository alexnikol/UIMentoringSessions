import UIKit

final class YeYa_PetsViewController: UIViewController {
    @IBOutlet weak var filtersCollectionView: UICollectionView!
    @IBOutlet weak var petsCollectionView: UICollectionView!
    var pets: [YeYa_PetModel] = []
    var filters: [YeYa_PetFilterModel] = []
    var filteredPets: [YeYa_PetModel] = []
    var selectedFilterType: YeYa_PetType = .allPets
    
    override func viewDidLoad() {
        super.viewDidLoad()
        filtersCollectionView.register(UINib(nibName: String(describing: YeYa_PetFilterCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: YeYa_PetFilterCollectionViewCell.self))
        filtersCollectionView.backgroundColor = RColor.petWhiteColor()
        filtersCollectionView.dataSource = self
        filtersCollectionView.delegate = self
        filtersCollectionView.showsHorizontalScrollIndicator = false
        filters = itemsFilters
        petsCollectionView.register(UINib(nibName: String(describing: YeYa_PetCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: YeYa_PetCell.self))
        petsCollectionView.backgroundColor = RColor.petWhiteColor()
        petsCollectionView.dataSource = self
        petsCollectionView.delegate = self
        petsCollectionView.showsVerticalScrollIndicator = false
        pets = itemsPets
    }
}
 
extension YeYa_PetsViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
        
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filters.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == filtersCollectionView {
            let filter = filters[indexPath.row]
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: YeYa_PetFilterCollectionViewCell.self), for: indexPath) as! YeYa_PetFilterCollectionViewCell
            let isSelected = filter.type  == selectedFilterType
            cell.setup(model: filter, isSelected: isSelected)
            return cell

        } else if collectionView == petsCollectionView {
            let pet = pets[indexPath.row]
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: YeYa_PetCell.self), for: indexPath) as! YeYa_PetCell
            cell.setup(model: pet)
            return cell
        } else {
            return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == filtersCollectionView {
            let filter = filters[indexPath.row]
            selectedFilterType = filter.type
            filtersCollectionView.reloadData()
        }
    }
}
