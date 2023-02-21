import UIKit

final class YefimYakuninFactory: MenteeChallengesFactory {
    var menteeName = "Yefim Yakunin"
    
    func uiScreenFor(challenge: Challenge) -> UIViewController? {
        switch challenge {
        case .coffeeShopList:
            let coffeeShopListVC = YefimYakunin_CoffeShopListViewController()
            return coffeeShopListVC
            
        case .login:
            return nil
        }
    }
}

