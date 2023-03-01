//  Copyright © 2023 Almost Engineer. All rights reserved.

import UIKit

class OleksandrKharchenko_CoffeShopViewController: UIViewController {
    
    @IBOutlet private weak var secondaryLabel: UILabel!
    @IBOutlet private weak var mainButton: OleksandrKharchenko_MainButton!
    @IBOutlet private weak var tableView: UITableView!
    var models: [CoffeShopViewModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        secondaryLabel.text = "Add your favorite coffee shops. Save places and easily find them on the map"
        title = "Coffee shops"
        mainButton.setTitle("add shop".uppercased(), for: .normal)
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.sizeToFit()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "OleksandrKharchenko_CoffeShopCell", bundle: nil), forCellReuseIdentifier: "OleksandrKharchenko_CoffeShopCell")
        
        let item: [CoffeShopViewModel] = [
            .init(
                title: "Coffee shop 1",
                description: "Volhohradska St, 15, Kryvyi Rih, Dnipropetrovsk Oblast, 50000"
            ),
            .init(
                title: "Coffee shop 2",
                description: "7855 Rockville St.Buffalo"
            ),
            .init(
                title: "Coffee shop 3",
                description: "293 Roberts Avenue Westbury"
            )
        ]
        models = item + item + item
    }
}

extension OleksandrKharchenko_CoffeShopViewController: UITableViewDelegate, UITableViewDataSource {
    
    struct CoffeShopViewModel {
        let title: String
        let description: String
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = models[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "OleksandrKharchenko_CoffeShopCell", for: indexPath) as! OleksandrKharchenko_CoffeShopCell
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
