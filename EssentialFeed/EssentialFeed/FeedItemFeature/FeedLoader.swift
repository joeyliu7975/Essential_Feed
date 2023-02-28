//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by JiaSin Liu on 2023/2/28.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
