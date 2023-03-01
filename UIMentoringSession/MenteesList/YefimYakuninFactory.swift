import UIKit

final class YefimYakuninFactory: MenteeChallengesFactory {
    var menteeName = "Yefim Yakunin"
    
    func uiScreenFor(challenge: Challenge) -> UIViewController? {
        switch challenge {
        case .coffeeShopList:
            return YefimYakuninCoffeShopChallengeViewController(nibName: "YefimYakuninCoffeShopChallengeViewController", bundle: nil)
        case .login:
            return nil
        case .startScreen:
            return YefimYakunin_StartScreenViewController()
        }
    }
}
