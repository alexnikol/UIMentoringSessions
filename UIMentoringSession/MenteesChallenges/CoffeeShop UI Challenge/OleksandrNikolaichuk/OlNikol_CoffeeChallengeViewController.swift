// Copyright © 2023 Almost Engineer. All rights reserved.

import UIKit

final class OlNikol_CoffeeChallengeViewController: UIViewController {
    @IBOutlet private weak var mapWrap: UIView!
    @IBOutlet private weak var secondaryTitle: UILabel!
    @IBOutlet private weak var tableView: UITableView!
    @IBOutlet private weak var mainButton: OlNik__MainButton!
    private var models: [CoffeeShopViewModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Coffee shops"
        secondaryTitle.text = "Title 1 Long long long title Long long long title Long long long title Long long long title Long long long title Title 1 Long long long title Long long long title Long long long title Long long long title Long long long title "
        mainButton.setTitle("ADD SHOP", for: .normal)
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "CoffeeShopCell", bundle: nil), forCellReuseIdentifier: "CoffeeShopCell")
        
        let items: [CoffeeShopViewModel] = [
            .init(
                title: "Title 1 Long long long title Long long long title Long long long title Long long long title Long long long title ",
                adress: "Long long long title"
            ),
            .init(
                title: "Title 1",
                adress: "Long long long title Long long long title Long long long title Long long long title Long long long title Long long long title Long long long title"
            ),
            .init(
                title: "Title 1",
                adress: "Long long long title"
            )
        ]
        
        models = items + items + items + items  + items + items  + items + items
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.sizeToFit()
    }
}

extension OlNikol_CoffeeChallengeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = models[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "CoffeeShopCell", for: indexPath) as! CoffeeShopCell
        cell.preservesSuperviewLayoutMargins = false
        cell.separatorInset = UIEdgeInsets.zero
        cell.layoutMargins = UIEdgeInsets.zero
        cell.mainLabel.text = model.title
        cell.secondaryLabel.text = model.adress
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}


extension OlNikol_CoffeeChallengeViewController {
    
    struct CoffeeShopViewModel {
        let title: String
        let adress: String
    }
}
