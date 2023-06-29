import UIKit

final class OlKha_PetCatrViewController: UIViewController {
    @IBOutlet private weak var mainButton: UIButton!
    @IBOutlet private weak var dogOnTheStreetView: UIView!
    @IBOutlet private weak var willieDogImage: UIImageView!
    @IBOutlet private weak var infoPetCollectionViewCell: UICollectionView!
    private var infoPet: [OlKha_InfoPetViewModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayoutLabel()
        configureFilterCollection()
        infoPet = infoPetData
        blurEffectForView()
    }
    
    private func setupLayoutLabel() {
        willieDogImage.layer.cornerRadius = 32.0
        dogOnTheStreetView.layer.cornerRadius = 16.0
        dogOnTheStreetView.clipsToBounds = true
        mainButton.layer.cornerRadius = 28.0
    }
    
    private func blurEffectForView() {
        let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = dogOnTheStreetView.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        dogOnTheStreetView.insertSubview(blurEffectView, at: 0)
    }
    
    init() {
        super.init(nibName: RNib.olKha_PetCatrViewController.name, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

extension OlKha_PetCatrViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        infoPet.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let info = infoPet[indexPath.row]
        let cell = infoPetCollectionViewCell.dequeueReusableCell(withReuseIdentifier: RNib.olKha_PetInformationCell, for: indexPath)!
        cell.setup(model: info)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let info = infoPet[indexPath.row]
        let width = 8.0 + 8.0 + info.title.widthOfString(usingFont: .systemFont(ofSize: 13.0, weight: .medium))
        return .init(width: max(width, 60.0), height: 29.0)
    }
    
    private func configureFilterCollection() {
        infoPetCollectionViewCell.backgroundColor = RColor.petWhiteColor()
        infoPetCollectionViewCell.register(RNib.olKha_PetInformationCell)
        infoPetCollectionViewCell.dataSource = self
        infoPetCollectionViewCell.delegate = self
    }
}
