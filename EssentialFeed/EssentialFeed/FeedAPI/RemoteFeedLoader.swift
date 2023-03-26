//
//  RemoteFeedLoader.swift
//  EssentialFeed
//
//  Created by JiaSin Liu on 2023/3/4.
//

import Foundation

public enum HTTPClientReuslt {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    typealias Result = HTTPClientReuslt
    func get(from url: URL, completion: @escaping (Result) -> Void)
}

public final class RemoteFeedLoader {
    private let url: URL
    private let client: HTTPClient
    
    public enum Error: Swift.Error {
        case connectivity, invalidData
    }
    
    public enum Result: Equatable {
        case success([FeedItem])
        case failure(Error)
    }
    
    public init(url: URL, client: HTTPClient) {
        self.client = client
        self.url = url
    }
    
    public func load(completion: @escaping (Result) -> Void) {
        client.get(from: url) { result in
            switch result {
            case let .success(_):
                completion(.failure(.invalidData))
            case let .failure(_):
                completion(.failure(.connectivity))
            }
        }
    }
}
