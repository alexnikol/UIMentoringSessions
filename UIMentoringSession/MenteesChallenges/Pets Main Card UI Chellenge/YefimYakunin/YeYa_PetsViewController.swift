import UIKit

class YeYa_PetsViewController: UIViewController {
    @IBOutlet weak var categoriesCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        categoriesCollectionView.delegate = self
        categoriesCollectionView.dataSource = self
        categoriesCollectionView.register(UINib(nibName: "PetFilterCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "PetFilterCollectionViewCell")
    }
}
 
extension YeYa_PetsViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    struct CategoriesPet {
        let title: String
        let image: UIImage
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
    
}
