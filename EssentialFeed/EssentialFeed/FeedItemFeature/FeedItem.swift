//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by JiaSin Liu on 2023/2/28.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
