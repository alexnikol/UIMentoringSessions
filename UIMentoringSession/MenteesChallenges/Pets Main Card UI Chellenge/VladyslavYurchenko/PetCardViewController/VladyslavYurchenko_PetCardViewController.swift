import UIKit

final class VladyslavYurchenko_PetCardViewController: UIViewController {
    @IBOutlet private weak var petImageCard: UIImageView!
    @IBOutlet private weak var signUpButton: UIButton!
    @IBOutlet private weak var updateLabel: UILabel!
    @IBOutlet private weak var petDescription: UILabel!
    @IBOutlet private weak var petInfoCard: UICollectionView!
    @IBOutlet private weak var petNameCard: UILabel!
    private var petsCharacteristics: [(title: String, color: UIColor)] = []
    private let petScreen: VladyslavYurchenko_PetSecondScreenModel
    
    override func viewDidLoad() {
        super.viewDidLoad()
        petImageCard.image = petScreen.photo
        petNameCard.text = petScreen.name
        petNameCard.textColor = RColor.petNameTextColorUi()!
        petDescription.text = petScreen.description
        updateLabel.text = petScreen.update
        signUpButton.setTitle(RText.petScreenButtonText(), for: .normal)
        signUpButton.layer.cornerRadius = 29
        signUpButton.backgroundColor = RColor.petSelectColor()
        signUpButton.setTitleColor(UIColor.white, for: .normal)
        petInfoCard.register(UINib(nibName: RNib.petCardCollectionViewCell.name, bundle: nil), forCellWithReuseIdentifier: RNib.petCardCollectionViewCell.name)
        petInfoCard.dataSource = self
        petInfoCard.delegate = self
    }
    
    init(petScreen: VladyslavYurchenko_PetSecondScreenModel) {
        self.petScreen = petScreen
        super.init(nibName: RNib.vladyslavYurchenko_PetCardViewController.name, bundle: nil)
        petsCharacteristics = [
            (petScreen.age, RColor.petAgeColorUi()!),
            (petScreen.skills, RColor.petSkillsColorUi()!),
            (petScreen.weight, RColor.petWeightCollorUi()!)
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
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RNib.petCardCollectionViewCell.name, for: indexPath) as! PetCardCollectionViewCell
        cell.setup(model: model)
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
