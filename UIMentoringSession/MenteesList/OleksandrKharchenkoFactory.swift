// Copyright © 2023 Almost Engineer. All rights reserved.

import UIKit

final class OleksandrKharchenkoFactory: MenteeChallengesFactory {
    var menteeName = "Oleksandr Kharchenko"
    
    func uiScreenFor(challenge: Challenge) -> UIViewController? {
        switch challenge {
        case .coffeeShopList:
            return nil
        case .login:
            return nil
        case .startScreen:
            return OleksandrKharchenko_StartScreenViewController(nibName: "OleksandrKharchenko_StartScreenViewController", bundle: nil)
        case .gamingScreen:
            return OleksandrKharchenko_GamingScreenViewController()
        }
    }
}
