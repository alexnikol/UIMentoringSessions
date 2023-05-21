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
        filtersCollectionView.dataSource = self
        filtersCollectionView.delegate = self
        filtersCollectionView.showsHorizontalScrollIndicator = false
        let modelsFilterPet = getMockItemsFilterPet()
        filters = modelsFilterPet
        petsCollectionView.register(UINib(nibName: String(describing: YeYa_PetCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: YeYa_PetCell.self))
        petsCollectionView.dataSource = self
        petsCollectionView.delegate = self
        let modelsPet = getMockItems()
        pets = modelsPet
        filteredPets = modelsPet
    }
}

extension YeYa_PetsViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case filtersCollectionView:
            return filters.count
        case petsCollectionView:
            return filteredPets.count
        default:
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == filtersCollectionView {
            let filter = filters[indexPath.row]
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: YeYa_PetFilterCollectionViewCell.self), for: indexPath) as! YeYa_PetFilterCollectionViewCell
            let isSelected = filter.type  == selectedFilterType
            cell.setup(petFilterModel: filter, isSelected: isSelected)
            return cell
        } else if collectionView == petsCollectionView {
            let pet = filteredPets[indexPath.row]
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
            filtersCollectionView.scrollToItem(at: indexPath, at:.centeredHorizontally, animated: true)
            
            switch filter.type {
            case .allPets:
                filteredPets = pets
            case .cats, .dogs:
                filteredPets = pets.filter { $0.type == filter.type }
            }
            petsCollectionView.reloadData()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == filtersCollectionView {
            return CGSize(width: 99, height: 52)
        } else if collectionView == petsCollectionView {
            let widht = (UIScreen.main.bounds.width - 32) / 2
            let heigth = widht / 171 * 200
            return CGSize(width: widht, height: heigth)
        } else {
            return .zero
        }
    }
}

extension YeYa_PetsViewController {
    
    func getMockItemsFilterPet() -> [YeYa_PetFilterModel] {
        let itemsFilters: [YeYa_PetFilterModel] = [
            .init(icon: RImage.allPet()!,
                  title: "All",
                  type: .allPets
                 ),
            .init(icon: RImage.dogPet()!,
                  title: "Dog",
                  type: .dogs
                 ),
            .init(icon: RImage.catPet()!,
                  title: "Cat",
                  type: .cats
                 )
        ]
        return itemsFilters
    }
    
    func getMockItems() -> [YeYa_PetModel] {
        let itemsPets: [YeYa_PetModel] = [
            .init(icon: RImage.garyDog()!,
                  name: "Gary",
                  breed: "Yorkshire Terrier",
                  age: "3 years",
                  type: .dogs
                 ),
            .init(icon: RImage.peachCat()!,
                  name: "Peach",
                  breed: "Half-breed",
                  age: "2.5 years",
                  type: .cats
                 ),
            .init(icon: RImage.whitheyCat()!,
                  name: "Whitney",
                  breed: "British Longhair",
                  age: "2 months",
                  type: .cats
                 ),
            .init(icon: RImage.buggyDog()!,
                  name: "Buggy",
                  breed: "Jack Russell Terrier",
                  age: "4 months",
                  type: .dogs
                 ),
            .init(icon: RImage.willieDog()!,
                  name: "Willie",
                  breed: "Samoyed",
                  age: "1.5 years",
                  type: .dogs
                 ),
            .init(icon: RImage.kiwiDog()!,
                  name: "Kiwi",
                  breed: "Yorkshire Terrier",
                  age: "1 years",
                  type: .dogs
                 ),
            .init(icon: RImage.stitchCat()!,
                  name: "Stitch",
                  breed: "European cat",
                  age: "1 year",
                  type: .cats
                 ),
            .init(icon: RImage.cakeDog()!,
                  name: "Cake",
                  breed: "Welsh Corgi",
                  age: "2 months",
                  type: .dogs
                 ),
            .init(icon: RImage.moonCat()!,
                  name: "Moon",
                  breed: "Siberian cat",
                  age: "2.5 years",
                  type: .cats
                 ),
            .init(icon: RImage.spikeCat()!,
                  name: "Spike",
                  breed: "Maine Coon",
                  age: "1.5 years",
                  type: .cats
                 )
        ]
        return itemsPets
    }
}
