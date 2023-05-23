//
//  MaksymBilyk_CoffeShopViewController.swift
//  UIMentoringSession
//
//  Created by Maxos on 5/22/23.
//  Copyright © 2023 Almost Engineer. All rights reserved.
//

import UIKit

final class MaksymBilyk_CoffeShopViewController: UIViewController {
    @IBOutlet private weak var secondaryLabel: UILabel!
    @IBOutlet private weak var mainButton: MaksymBilyk_MainButton!
    @IBOutlet private weak var tableView: UITableView!
    var models: [MaksymBilykCoffeShopViewModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Coffe shop"
        secondaryLabel.text = "Add your favorite coffee shops. Save places and easily find them on the map."
        mainButton.setTitle("add shop".uppercased(), for: .normal)
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.sizeToFit()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: String(describing: MaksymBilyk_CoffeShopCell.self), bundle: nil), forCellReuseIdentifier: String(describing: MaksymBilyk_CoffeShopCell.self))
        
        let items: [MaksymBilykCoffeShopViewModel] = [
            .init(title: "Shop name 1",
                  description: "Volhohradska St, 15, Kryvyi Rih, Dnipropetrovsk Oblast, 50000"
                 ),
            .init(title: "Shop name 2",
                  description: "7855 Rockville St.Buffalo"
                 ),
            .init(title: "Shop name 3",
                  description: "293 Roberts Avenue Westbury"
                 )
        ]
        models = items + items + items
    }
}

extension MaksymBilyk_CoffeShopViewController: UITableViewDataSource, UITableViewDelegate {
    
    struct MaksymBilykCoffeShopViewModel {
        let title: String
        let description: String
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = models[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: MaksymBilyk_CoffeShopCell.self), for: indexPath) as! MaksymBilyk_CoffeShopCell
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
