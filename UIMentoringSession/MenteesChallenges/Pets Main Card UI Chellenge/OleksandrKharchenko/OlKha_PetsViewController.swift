import UIKit

final class OlKha_PetsViewController: UIViewController {
    @IBOutlet weak var animalsCollectionView: UICollectionView!
    @IBOutlet weak var filterCollectionView: UICollectionView!
    var models: [OlKha_PetsViewModel] = []
    var filter: [OlKha_FilterViewModel] = []
    var animalsTypes: [AnimalsTypes] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = RColor.petWhiteColor()
        filterCollectionView.backgroundColor = RColor.petWhiteColor()
        animalsCollectionView.backgroundColor = RColor.petWhiteColor()
        animalsCollectionView.register(UINib(nibName: "Olkha_AnimalsCell", bundle: nil), forCellWithReuseIdentifier: "Olkha_AnimalsCell")
        animalsCollectionView.dataSource = self
        animalsCollectionView.delegate = self
        filterCollectionView.register(UINib(nibName: "Olkha_FilterAnimalsCell", bundle: nil), forCellWithReuseIdentifier: "Olkha_FilterAnimalsCell")
        filterCollectionView.dataSource = self
        filterCollectionView.delegate = self
        // едлаем магазин с фильтрами
        
        models = itemsAnimals
        filter = itemsFilter
    }
    
    init() {
        super.init(nibName: "OlKha_PetsViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

extension OlKha_PetsViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == filterCollectionView {
            return filter.count
        } else if collectionView == animalsCollectionView {
            return models.count
        } else {
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == filterCollectionView {
            let animals = filter[indexPath.row ]
            let cell = filterCollectionView.dequeueReusableCell(withReuseIdentifier: "Olkha_FilterAnimalsCell", for: indexPath) as! Olkha_FilterAnimalsCell
            cell.filterAnimalsLabel.text = animals.type
            cell.filterAnimalsImage.image = animals.animal
            filterCollectionView.showsHorizontalScrollIndicator = false
            return cell
            
        } else if collectionView == animalsCollectionView {
            let model = models[indexPath.row ]
            let cell = animalsCollectionView.dequeueReusableCell(withReuseIdentifier: "Olkha_AnimalsCell", for: indexPath) as! Olkha_AnimalsCell
            cell.nameLabel.text = model.name
            cell.ageLabel.text = model.age
            cell.breadAnimalLabel.text = model.breadAnimal
            cell.animalsImageView.image  = model.animal
            animalsCollectionView.showsVerticalScrollIndicator = false
            return cell
            
        } else {
            return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == filterCollectionView {
            let typeAnimals = filter[indexPath.row]
            let cell = filterCollectionView.dequeueReusableCell(withReuseIdentifier: "Olkha_FilterAnimalsCell", for: indexPath) as! Olkha_FilterAnimalsCell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == filterCollectionView {
            return CGSize(width: 99, height: 52)
        } else if collectionView == animalsCollectionView {
            let widht = (UIScreen.main.bounds.width - 36) / 2
            let heigth = widht / 163 * 192
            return CGSize(width: widht, height: heigth)
        } else {
            return .zero
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 16
    }
}
