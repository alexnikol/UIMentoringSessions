// Copyright © 2023 Almost Engineer. All rights reserved.

import UIKit
import GoogleMaps

final class OlNikol_CoffeeChallengeViewController: UIViewController {
    
    private enum Defaults {
        static let defaultCenter = (lat: 47.918089, long: 33.352680)
    }

    
    @IBOutlet private weak var mapWrap: GMSMapView!
    @IBOutlet private weak var secondaryTitle: UILabel!
    @IBOutlet private weak var tableView: UITableView!
    @IBOutlet private weak var mainButton: OlNik__MainButton!
    private var models: [CoffeeShopViewModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Coffee shops"
        secondaryTitle.text = R.string.texts.coffeeShopSecondaryTitle()
        mainButton.setTitle(R.string.texts.coffeeShopAddShop(), for: .normal)
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(R.nib.coffeeShopCell)
        
//        let image = UIImage(named: "tagIcon")
//        let image = R.image.tagIcon
        
//        let color = R.color.olNikSecondaryColor
//        let color = UIColor(named: "olNikSecondaryColor")
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.sizeToFit()
        
        mapSetup()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5, execute: {
            self.fakeSetup()
        })
    }
    
    func mapSetup() {
        mapWrap.delegate = self
        let defaultCamera = GMSCameraPosition.camera(withLatitude: Defaults.defaultCenter.lat,
                                                     longitude: Defaults.defaultCenter.long,
                                                     zoom: 12)
        mapWrap.camera = defaultCamera

    }
    
    func fakeSetup() {
        let items: [CoffeeShopViewModel] = [
            .init(
                title: "Title 1 Long long long title Long long long title Long long long title Long long long title Long long long title ",
                adress: "Long long long title",
                coordinates: .init(latitude: 47.905578, longitude: 33.3408778)
            ),
            .init(
                title: "Title 1",
                adress: "Long long long title Long long long title Long long long title Long long long title Long long long title Long long long title Long long long title",
                coordinates: .init(latitude: 47.9053738, longitude: 33.342257)
            ),
            .init(
                title: "Title 1",
                adress: "Long long long title",
                coordinates: .init(latitude: 47.903089, longitude: 33.3429009)
            )
        ]
        
        models = items
        
        showMarkersOnMap(from: models)
        
        tableView.reloadData()
    }
    
    func showMarkersOnMap(from list: [CoffeeShopViewModel]) {
        let path = GMSMutablePath()
        for shop in list {
            let marker = GMSMarker()
            marker.position = shop.coordinates
            
            let imageView = UIImageView(image: Image.cupIcon())
            imageView.frame = CGRect(x: 0, y: 0, width: 24, height: 24)
            
            marker.iconView = imageView
            marker.map = mapWrap
            marker.groundAnchor = CGPoint(x: 0.5, y: 0.5)
            
            //
            path.add(CLLocationCoordinate2DMake(shop.coordinates.latitude, shop.coordinates.longitude))
        }
        
        let bounds = GMSCoordinateBounds(path: path)
        self.mapWrap.animate(with: GMSCameraUpdate.fit(bounds, withPadding: 15.0))
    }
}

extension OlNikol_CoffeeChallengeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = models[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.coffeeShopCell, for: indexPath)!
        cell.preservesSuperviewLayoutMargins = false
        cell.separatorInset = UIEdgeInsets.zero
        cell.layoutMargins = UIEdgeInsets.zero
        cell.mainLabel.text = model.title
        cell.secondaryLabel.text = model.adress
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let shop = models[indexPath.row]
        mapWrap.animate(toLocation: shop.coordinates)
    }
}


extension OlNikol_CoffeeChallengeViewController {
    
    struct CoffeeShopViewModel {
        let title: String
        let adress: String
        let coordinates: CLLocationCoordinate2D
    }
}

extension OlNikol_CoffeeChallengeViewController: GMSMapViewDelegate {}
