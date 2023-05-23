//  Created by Maxos on 5/22/23.

import UIKit

final class MaksymBilykFactory: MenteeChallengesFactory {
    var menteeName = "Maksym Bilyk"
    
    func uiScreenFor(challenge: Challenge) -> UIViewController? {
        switch challenge {
        case .coffeeShopList:
            return MaksymBilyk_CoffeShopViewController()
        case .login:
            return nil
        case .startScreen:
            return nil
        case .gamingScreen:
            return nil
        case .petsMainScreen:
            return nil
        }
    }
}
