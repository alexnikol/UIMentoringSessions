//
//  MainPageCategore.swift
//  UIMentoringSession
//
//  Created by Yefim on 04.06.2023.
//  Copyright © 2023 Almost Engineer. All rights reserved.
//

import Foundation

enum YeYa_MainPageCategore: Int, CaseIterable {
    case WantToRead
    case MoreToExplore
    case AllTimeBestsellers
    case ReadingGoals
    case BooksReadThisYear

    var categore: String {
        switch self {
        case .WantToRead:
            return "Want To Read"
        case .MoreToExplore:
            return "More To Explore"
        case .AllTimeBestsellers:
            return "All-Time Bestsellers"
        case .ReadingGoals:
            return "Reading Goals"
        case .BooksReadThisYear:
            return "Books Read This Year"
        }
    }
}
