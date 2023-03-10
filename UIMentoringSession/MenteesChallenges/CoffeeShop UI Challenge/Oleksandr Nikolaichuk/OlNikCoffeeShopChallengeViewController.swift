// Copyright © 2023 Almost Engineer. All rights reserved.

import UIKit

final class OlNikCoffeeShopChallengeViewController: UIViewController {
    @IBOutlet private weak var secondaryLabel: UILabel!
    @IBOutlet private weak var mainButton: OlNik_MainButton!
    @IBOutlet private weak var tableView: UITableView!
    var models: [CoffeeShopViewModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        secondaryLabel.text = Text.coffeeShopSecondaryTitle()
        title = Text.coffeeShopTitle()
        mainButton.setTitle(Text.coffeeShopAddShop().uppercased(), for: .normal)
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.sizeToFit()
                
        tableView.delegate = self
        tableView.dataSource = self
//        tableView.register(UINib(nibName: "OlNik_CoffeeShopCell", bundle: nil), forCellReuseIdentifier: "OlNik_CoffeeShopCell")
        
        tableView.register(R.nib.olNik_CoffeeShopCell)
        
        let items: [CoffeeShopViewModel] = [
            .init(
                title: "Title 1 Long long long title Long long long title Long long long title Long long long title Long long long title ",
                description: "Long long long title"
            ),
            .init(
                title: "Title 1",
                description: "Long long long title Long long long title Long long long title Long long long title Long long long title Long long long title Long long long title"
            ),
            .init(
                title: "Title 1",
                description: "Long long long title"
            )
        ]
        
        models = items + items + items + items
    }
}

extension OlNikCoffeeShopChallengeViewController: UITableViewDelegate, UITableViewDataSource {
    
    struct CoffeeShopViewModel {
        let title: String
        let description: String
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = models[indexPath.row]
//        let cell = tableView.dequeueReusableCell(withIdentifier: "OlNik_CoffeeShopCell", for: indexPath) as! OlNik_CoffeeShopCell
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.olNik_CoffeeShopCell, for: indexPath)!
        
        cell.preservesSuperviewLayoutMargins = false
        cell.separatorInset = UIEdgeInsets.zero
        cell.layoutMargins = UIEdgeInsets.zero
        cell.mainLabel.text = model.title
        cell.secondaryLabel.text = model.description
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
