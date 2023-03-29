//
//  PetShop.swift
//  UIMentoringSession
//
//  Created by Yefim on 29.03.2023.
//  Copyright © 2023 Almost Engineer. All rights reserved.
//

import Foundation

struct PetShop {
    static func get() -> [Pet] {
        return [
            Pet(icon: #imageLiteral(resourceName: "garyDog"), name: "Gary", breed: "Yorkshire Terrier", age: 3)
        ]
    }
}
