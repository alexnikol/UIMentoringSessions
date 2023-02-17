// Copyright © 2023 Almost Engineer. All rights reserved.

import UIKit

final class MenteesListController: UITableViewController {
    var models: [MenteeChallengesFactory] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Mentees List"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: String(describing: UITableViewCell.self))
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let menteeChallenges = models[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: UITableViewCell.self))!
        var content = cell.defaultContentConfiguration()
        content.text = menteeChallenges.menteeName
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let menteeChallenges = models[indexPath.row]
        let challengesVC = ChallengesListViewController()
        challengesVC.mentee = menteeChallenges
        navigationController?.pushViewController(challengesVC, animated: true)
    }
}
