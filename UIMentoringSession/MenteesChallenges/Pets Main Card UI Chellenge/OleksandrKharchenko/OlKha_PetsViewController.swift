import UIKit

final class OlKha_PetsViewController: UIViewController {
    @IBOutlet weak var animalsCollectionView: UICollectionView!
    @IBOutlet weak var filterCollectionView: UICollectionView!
    var models : [OlKha_PetsViewModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.animalsCollectionView.register(UINib(nibName: "OlkhaAnimalsCell", bundle: nil), forCellWithReuseIdentifier: "OlkhaAnimalsCell")
        self.animalsCollectionView.dataSource = self
        self.animalsCollectionView.delegate = self
        
        let items: [OlKha_PetsViewModel] = [
            .init(name: "Gary",
                  age: "3 years",
                  breadAnimal: "Yorkshire Terrier",
                  animal: UIImage(imageLiteralResourceName: "garyDog")
                 ),
            .init(name: "Peach",
                  age: "2.5 years",
                  breadAnimal: "Half-breed",
                  animal: UIImage(imageLiteralResourceName: "peachCat")
                 ),
            .init(name: "Whitney",
                  age: "2 months",
                  breadAnimal: "British Longhair",
                  animal: UIImage(imageLiteralResourceName: "whitheyCat")
                 ),
            .init(name: "Buggy",
                  age: "4 months",
                  breadAnimal: "Jack Russell Terrier",
                  animal: UIImage(imageLiteralResourceName: "buggyDog")
                 ),
            .init(name: "Willie",
                  age: "1.5 years",
                  breadAnimal: "Samoyed",
                  animal: UIImage(imageLiteralResourceName: "willieDog")
                 ),
            .init(name: "Kiwi",
                  age: "1 years",
                  breadAnimal: "Yorkshire Terrier",
                  animal: UIImage(imageLiteralResourceName: "kiwiDog")
                 ),
            .init(name: "Stitch",
                  age: "1 year",
                  breadAnimal: "European cat",
                  animal: UIImage(imageLiteralResourceName: "whitheyCat")
                 ),
            .init(name: "Cake",
                  age: "2 months",
                  breadAnimal: "Welsh Corgi",
                  animal: UIImage(imageLiteralResourceName: "whitheyCat")
                 ),
            .init(name: "Moon",
                  age: "2.5 years",
                  breadAnimal: "Siberian cat",
                  animal: UIImage(imageLiteralResourceName: "whitheyCat")
                 ),
            .init(name: "Spike",
                  age: "1.5 years",
                  breadAnimal: "Maine Coon",
                  animal: UIImage(imageLiteralResourceName: "whitheyCat")
                 ),
        ]
        models = items
    }
    
    init() {
        super.init(nibName: "OlKha_PetsViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

extension OlKha_PetsViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    struct OlKha_PetsViewModel {
        let name: String
        let age: String
        let breadAnimal: String
        let animal: UIImage
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return models.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let model = models[indexPath.row ]
        let cell = animalsCollectionView.dequeueReusableCell(withReuseIdentifier: "OlkhaAnimalsCell", for: indexPath) as! OlkhaAnimalsCell
        cell.nameLabel.text = model.name
        cell.ageLabel.text = model.age
        cell.breadAnimalLabel.text = model.breadAnimal
        cell.animalsImageView.image  = model.animal
    
        return cell
    }
    
    
}
