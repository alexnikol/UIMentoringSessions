import UIKit

final class VladyslavYurchenko_PetCardViewController: UIViewController {
    @IBOutlet weak var petImageCard: UIImageView!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var updateLabel: UILabel!
    @IBOutlet weak var petDescription: UILabel!
    @IBOutlet weak var petInfoCard: UICollectionView!
    @IBOutlet weak var petNameCard: UILabel!
    private var petInfo: [VladyslavYurchenko_PetInfo] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        petImageCard.image = RImage.willieDog()
        petInfoCard.dataSource = self
        petInfoCard.delegate = self
        
    }

}
extension VladyslavYurchenko_PetCardViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return petInfo.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == petInfoCard {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PetCardCollectionViewCell", for: indexPath) as! PetCardCollectionViewCell
            let petInfo = petInfo[indexPath.row]

        }
        return UICollectionViewCell()
    }
}
