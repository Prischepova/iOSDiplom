//
//  FeedStoriesCellInfo.swift
//  OlimpiaStart
//
//  Created by Ксения Прищепова on 25.05.2023.
//

import UIKit

struct FeedStoriesItemCellInfo {
    let image: UIImage
    let username: String
    let isAddButtonVisible: Bool
    let isNewStory: Bool
}

typealias FeedStoriesCellInfo = [FeedStoriesItemCellInfo]
