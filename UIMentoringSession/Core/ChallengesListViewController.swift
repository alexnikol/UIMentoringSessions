// Copyright © 2023 Almost Engineer. All rights reserved.

import UIKit

final class ChallengesListViewController: UITableViewController {
    var models: [Challenge] = Challenge.allCases
    var mentee: MenteeChallengesFactory!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = mentee.menteeName
        models = models.filter { mentee.uiScreenFor(challenge: $0) != nil }
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: String(describing: UITableViewCell.self))
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = models[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: UITableViewCell.self))!
        var content = cell.defaultContentConfiguration()
        content.text = "✅ " + model.rawValue
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let challenge = models[indexPath.row]
        guard let menteeChallengeSolution = mentee.uiScreenFor(challenge: challenge) else { return }
        navigationController?.pushViewController(menteeChallengeSolution, animated: true)
    }
}
