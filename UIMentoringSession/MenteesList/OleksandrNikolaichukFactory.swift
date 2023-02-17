// Copyright © 2023 Almost Engineer. All rights reserved.

import UIKit

final class OleksandrNikolaichukFactory: MenteeChallengesFactory {
    var menteeName = "Oleksandr Nikolaichuk"
    
    func uiScreenFor(challenge: Challenge) -> UIViewController? {
        switch challenge {
        case .coffeeShopList:
            return nil
            
        case .login:
            return nil
        }
    }
}
