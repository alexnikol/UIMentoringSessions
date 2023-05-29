//
//  MaksymBilyk_AnimalsTypes.swift
//  UIMentoringSession
//
//  Created by Maxos on 5/29/23.
//  Copyright © 2023 Almost Engineer. All rights reserved.
//

import Foundation

enum MaksymBilyk_AnimalsTypes: CaseIterable {
    case Pets
    case cats
    case dogs
    
    var title: String {
        switch self {
        case .Pets:
            return "All"
        case .cats:
            return "Cats"
        case .dogs:
            return "Dogs"
        }
    }
}
