//
//  VladyslavYurchenkoFactory.swift
//  UIMentoringSession
//
//  Created by Владислав Юрченко on 12.04.2023.
//  Copyright © 2023 Almost Engineer. All rights reserved.
//

import UIKit

final class VladyslavYurchenkoFactory: MenteeChallengesFactory {
    var menteeName = "Vladyslav Yurchenko"
    func uiScreenFor(challenge: Challenge) -> UIViewController? {
        switch challenge {
        case .coffeeShopList:
            return nil
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
