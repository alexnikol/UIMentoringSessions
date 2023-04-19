import UIKit

class YeYa_PetsViewController: UIViewController {
    @IBOutlet weak var categoriesCollectionView: UICollectionView!
    @IBOutlet weak var petsCollectionView: UICollectionView!
    var models: [Pet] = []
    var dataSourceFilters: [YeYa_PetFilter] = []
    var petTypes: [PetType] = []
    var selectedFilterType: PetType = .allPets
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoriesCollectionView.backgroundColor = RColor.petWhiteColor()
        categoriesCollectionView.register(UINib(nibName: String(describing: YeYa_PetFilterCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: YeYa_PetFilterCollectionViewCell.self))
        categoriesCollectionView.dataSource = self
        categoriesCollectionView.delegate = self
        dataSourceFilters = itemFilters
    }
}
 
extension YeYa_PetsViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
        
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSourceFilters.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let filter = dataSourceFilters[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: YeYa_PetFilterCollectionViewCell.self), for: indexPath) as! YeYa_PetFilterCollectionViewCell
        
        let isSelected = filter.type == selectedFilterType
        cell.setup(model: filter, isSelected: isSelected)
        return cell
    }
    
    
}
