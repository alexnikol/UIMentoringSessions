import UIKit

final class VladyslavYurchenko_PetCardViewController: UIViewController {
    @IBOutlet weak var petImageCard: UIImageView!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var updateLabel: UILabel!
    @IBOutlet weak var petDescription: UILabel!
    @IBOutlet weak var petInfoCard: UICollectionView!
    @IBOutlet weak var petNameCard: UILabel!
    var petsCharacteristics: [(title: String, color: UIColor)] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        petImageCard.image = petScreen.photo
        petNameCard.text = petScreen.breed + " " + petScreen.name
        petDescription.text = petScreen.description
        updateLabel.text = petScreen.update
        signUpButton.setTitle("Sign up for an acquaintance", for: .normal)
        signUpButton.layer.cornerRadius = 29
        signUpButton.backgroundColor = RColor.petSelectColor()
        signUpButton.setTitleColor(UIColor.white, for: .normal)
        petInfoCard.register(UINib(nibName: "PetCardCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "PetCardCollectionViewCell")
        petInfoCard.dataSource = self
        petInfoCard.delegate = self
    }
    
    private let petScreen: VladyslavYurchenko_PetSecondScreenModel
    
    init(petScreen: VladyslavYurchenko_PetSecondScreenModel) {
        self.petScreen = petScreen
        super.init(nibName: RNib.vladyslavYurchenko_PetCardViewController.name, bundle: nil)
        petsCharacteristics = [
            (petScreen.age, UIColor(red: 1.000, green: 0.920, blue: 0.800, alpha: 1.0)),
            (petScreen.skills, UIColor(red: 0.880, green: 0.800, blue: 1.000, alpha: 1.0)),
            (petScreen.weight, UIColor(red: 1.000, green: 0.800, blue: 0.840, alpha: 1.0))
        ]
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension VladyslavYurchenko_PetCardViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return petsCharacteristics.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let model = petsCharacteristics[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PetCardCollectionViewCell", for: indexPath) as! PetCardCollectionViewCell
        cell.petInfoLabel.text = model.title
        cell.backgroundColor = model.color
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let model = petsCharacteristics[indexPath.row]
        let height: CGFloat = 29.0
        let staticWidth: CGFloat = 14.0 + 14.0
        let dynamicWidth: CGFloat = model.title.widthOfString(usingFont: .monospacedDigitSystemFont(ofSize: 13.0, weight: .medium))
        return CGSize(width: staticWidth + dynamicWidth, height: height)
    }
}
