import UIKit

final class YefimYakuninFactory: MenteeChallengesFactory {
    var menteeName = "Yefim Yakunin!!!!!!"
    
    func uiScreenFor(challenge: Challenge) -> UIViewController? {
        switch challenge {
        case .coffeeShopList:
            return nil
            
        case .login:
            return nil
        }
    }
}
