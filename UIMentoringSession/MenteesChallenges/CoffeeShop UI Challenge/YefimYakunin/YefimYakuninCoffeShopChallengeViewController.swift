import UIKit

final class YefimYakuninCoffeShopChallengeViewController: UIViewController {
    @IBOutlet private weak var secondaryLabel: UILabel!
    @IBOutlet private weak var mainButton: YefimYakunin_MainButton!
    @IBOutlet private weak var tableView: UITableView!
    var models: [CoffeeShopViewModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Coffee shops"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.sizeToFit()
        secondaryLabel.text = "Add your favorite coffee shops. Save places and easily find them on the map"
        mainButton.setTitle("add shop".uppercased(), for: .normal)
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "YeYa_CoffeeShopCell", bundle: nil), forCellReuseIdentifier: "YeYa_CoffeeShopCell")
        
        let items: [CoffeeShopViewModel] = [
            .init(title: "Viter",
                  description: "Kanatna Street, 38, Odesa, Odesa region, 65000"),
            .init(title: "Foundation Coffee Place",
                  description: "Zhukovsky Street, 19, Odesa, Odesa region, 65026"),
            .init(title: "Daily",
                  description: "Richelievska Street, 33, Odesa, Odesa Region, 65125"),
        ]
        models = items + items + items
    }
}

extension YefimYakuninCoffeShopChallengeViewController: UITableViewDelegate, UITableViewDataSource {
    struct CoffeeShopViewModel {
        let title: String
        let description: String
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = models[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "YeYa_CoffeeShopCell", for: indexPath) as! YeYa_CoffeeShopCell
        cell.preservesSuperviewLayoutMargins = false
        cell.separatorInset = UIEdgeInsets.zero
        cell.firstLabel.text = model.title
        cell.secondaryLabel.text = model.description
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
