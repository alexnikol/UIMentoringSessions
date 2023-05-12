import UIKit

final class YeYa_PetsViewController: UIViewController {
    @IBOutlet weak var categoriesCollectionView: UICollectionView!
    @IBOutlet weak var petsCollectionView: UICollectionView!
    var pets: [YeYa_Pet] = []
    var filteredPets: [YeYa_Pet] = []
    var petFilters: [YeYa_PetFilter] = []
    //var petTypes: [YeYa_PetType] = []
    var selectedFilterType: YeYa_PetType = .allPets
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoriesCollectionView.backgroundColor = RColor.petWhiteColor()
        categoriesCollectionView.register(UINib(nibName: String(describing: YeYa_PetFilterCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: YeYa_PetFilterCollectionViewCell.self))
        categoriesCollectionView.dataSource = self
        categoriesCollectionView.delegate = self
        petFilters = itemFilters
    }
}
 
extension YeYa_PetsViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
        
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return petFilters.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let filter = petFilters[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: YeYa_PetFilterCollectionViewCell.self), for: indexPath) as! YeYa_PetFilterCollectionViewCell
        
        let isSelected = filter.type == selectedFilterType
        cell.setup(model: filter, isSelected: isSelected)
        return cell
    }
    
    
}
