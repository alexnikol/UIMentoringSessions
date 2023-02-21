// Copyright © 2023 Almost Engineer. All rights reserved.

import UIKit

final class YefimYakuninFactory: MenteeChallengesFactory {
    var menteeName = "Yefim Yakunin"
    
    func uiScreenFor(challenge: Challenge) -> UIViewController? {
        switch challenge {
        case .startScreen:
            return StartScreenViewController()
        }
    }
}
