//
//  MaksymBilykFactory.swift
//  UIMentoringSession
//
//  Created by Maxos on 5/25/23.
//  Copyright © 2023 Almost Engineer. All rights reserved.
//

import UIKit

final class MaksymBilykFactory: MenteeChallengesFactory {
    var menteeName = "Maksym Bilyk"
    
    func uiScreenFor(challenge: Challenge) -> UIViewController? {
        switch challenge {
        case .coffeeShopList:
            return nil
        case .login:
            return nil
        case .startScreen:
            return nil
        case .gamingScreen:
            return MaksymBilykGamingScreenViewController()
        case .petsMainScreen:
            return nil
        }
    }
}
