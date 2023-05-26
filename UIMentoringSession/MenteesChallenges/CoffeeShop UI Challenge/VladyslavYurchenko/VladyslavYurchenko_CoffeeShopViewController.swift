//
//  VladyslavYurchenko_CoffeeShopViewController.swift
//  UIMentoringSession
//
//  Created by Владислав Юрченко on 25.05.2023.
//  Copyright © 2023 Almost Engineer. All rights reserved.
//

import UIKit

final class VladyslavYurchenko_CoffeeShopViewController: UIViewController {
    
    @IBOutlet private weak var secondaryLabel: UILabel!
    @IBOutlet private weak var mainButton: VladyslavYurchenko_MainButton!
    @IBOutlet private weak var tableView: UITableView!
    var models: [CoffeeShopViewModel] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Coffee shops"
        mainButton.setTitle("add shop".uppercased(), for: .normal)
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.sizeToFit()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "VladyslavYurchenko_CoffeeShopCell", bundle: nil), forCellReuseIdentifier: "VladyslavYurchenko_CoffeeShopCell")
        let item: [CoffeeShopViewModel] = [
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

extension VladyslavYurchenko_CoffeeShopViewController: UITableViewDelegate, UITableViewDataSource {
    
    struct CoffeeShopViewModel {
        let title: String
        let description: String
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = models[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "VladyslavYurchenko_CoffeeShopCell", for: indexPath) as! VladyslavYurchenko_CoffeeShopCell
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
