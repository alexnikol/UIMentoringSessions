// Copyright © 2023 Almost Engineer. All rights reserved.

import UIKit

enum Challenge: String, CaseIterable {
    case coffeeShopList = "Coffee shop list screen"
    case login = "Login screen"
    case startScreen = "Start screen"
}

protocol MenteeChallengesFactory {
    var menteeName: String { get }
    
    func uiScreenFor(challenge: Challenge) -> UIViewController?
}
