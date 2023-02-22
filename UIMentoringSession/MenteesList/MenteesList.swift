// Copyright © 2023 Almost Engineer. All rights reserved.

import Foundation

enum MenteesList {
    
    static func list() -> [MenteeChallengesFactory] {
        return [
            OleksandrNikolaichukFactory(),
            YefimYakuninFactory(),
            OleksandrKharchenkoFactory()
        ]
    }
}
