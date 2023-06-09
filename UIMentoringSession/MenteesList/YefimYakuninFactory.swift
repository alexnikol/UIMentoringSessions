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
        case .gamingScreen:
            return YefimYakuninGamingScreenViewController(nibName: "YefimYakuninGamingScreenViewController", bundle: nil)
        case .petsMainScreen:
            return YeYa_PetsViewController(nibName: "YeYa_PetsViewController", bundle: nil)
        case .iOsNewsScreen:
            return YeYa_IOSNewsViewController(nibName: "YeYa_IOSNewsViewController", bundle: nil)
        }
    }
}
